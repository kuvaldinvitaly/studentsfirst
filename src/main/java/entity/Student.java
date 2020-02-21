package entity;

public class Student {

    private int id;
    private String sername;
    private String name;
    private String group;
    private String date;
    private int status = 1;

    public Student() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSername() {
        return sername;
    }

    public void setSername(String sername) {
        this.sername = sername;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Student)) return false;

        Student student = (Student) o;

        if (getId() != student.getId()) return false;
        if (getStatus() != student.getStatus()) return false;
        if (getSername() != null ? !getSername().equals(student.getSername()) : student.getSername() != null)
            return false;
        if (getName() != null ? !getName().equals(student.getName()) : student.getName() != null) return false;
        if (getGroup() != null ? !getGroup().equals(student.getGroup()) : student.getGroup() != null) return false;
        return getDate() != null ? getDate().equals(student.getDate()) : student.getDate() == null;
    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + (getSername() != null ? getSername().hashCode() : 0);
        result = 31 * result + (getName() != null ? getName().hashCode() : 0);
        result = 31 * result + (getGroup() != null ? getGroup().hashCode() : 0);
        result = 31 * result + (getDate() != null ? getDate().hashCode() : 0);
        result = 31 * result + getStatus();
        return result;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", sername='" + sername + '\'' +
                ", name='" + name + '\'' +
                ", group='" + group + '\'' +
                ", date='" + date + '\'' +
                ", status=" + status +
                '}';
    }
}
