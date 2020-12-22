package servlets;

import dao.LecturerDaoImpl;
import dao.SubjectDao;
import dao.SubjectDaoImpl;
import model.Subject;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CourseUpdateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("list", new LecturerDaoImpl().listNames());
        SubjectDao subjectDao = new SubjectDaoImpl();
        Integer id = Integer.valueOf(req.getParameter("id"));
        Subject subject = subjectDao.getSubjectById(id);
        req.setAttribute("subject", subject);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/pages/update.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("submit") != null) {
            int id = Integer.parseInt(req.getParameter("id"));
            String title = req.getParameter("course");
            int lecturer_id = Integer.parseInt(req.getParameter("lecturer"));
            int months = Integer.parseInt(req.getParameter("months"));

            Subject subject = new Subject(id, title, lecturer_id, months);
            SubjectDao subjectDao = new SubjectDaoImpl();
            subjectDao.updateSubject(subject);

            resp.sendRedirect("/courses");
        }
    }
}
