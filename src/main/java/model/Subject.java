package model;

public class Subject {
    private int id;
    private String title;
    private String lecturer;
    private int lecturerId;
    private int months;

    public Subject() {
    }

    public Subject(int id, String title, int lecturerId, int credits) {
        this.id = id;
        this.title = title;
        this.lecturerId = lecturerId;
        this.months = months;
    }

    public int getLecturerId() {
        return lecturerId;
    }

    public void setLecturerId(int lecturerId) {
        this.lecturerId = lecturerId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLecturer() {
        return lecturer;
    }

    public void setLecturer(String lecturer) {
        this.lecturer = lecturer;
    }

    public int getMonths() {
        return months;
    }

    public void setMonths(int months) {
        this.months = months;
    }
}

