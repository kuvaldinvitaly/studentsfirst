package entity;

import java.util.ArrayList;
import java.util.List;

public class Semestr {
    private int id;
    private String semestr;
    private String duration;
    private int stetus = 1;
    private List<Discipline> disciplines = new ArrayList<>();

    public Semestr() {
    }

    public Semestr(int id, String semestr, String duration, int stetus, List<Discipline> disciplines) {
        this.id = id;
        this.semestr = semestr;
        this.duration = duration;
        this.stetus = stetus;
        this.disciplines = disciplines;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSemestr() {
        return semestr;
    }

    public void setSemestr(String semestr) {
        this.semestr = semestr;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public int getStetus() {
        return stetus;
    }

    public void setStetus(int stetus) {
        this.stetus = stetus;
    }

    public List<Discipline> getDisciplines() {
        return disciplines;
    }

    public void setDisciplines(List<Discipline> disciplines) {
        this.disciplines = disciplines;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Semestr)) return false;

        Semestr semestr1 = (Semestr) o;

        if (getId() != semestr1.getId()) return false;
        if (getStetus() != semestr1.getStetus()) return false;
        if (getSemestr() != null ? !getSemestr().equals(semestr1.getSemestr()) : semestr1.getSemestr() != null)
            return false;
        if (getDuration() != null ? !getDuration().equals(semestr1.getDuration()) : semestr1.getDuration() != null)
            return false;
        return getDisciplines() != null ? getDisciplines().equals(semestr1.getDisciplines()) : semestr1.getDisciplines() == null;
    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + (getSemestr() != null ? getSemestr().hashCode() : 0);
        result = 31 * result + (getDuration() != null ? getDuration().hashCode() : 0);
        result = 31 * result + getStetus();
        result = 31 * result + (getDisciplines() != null ? getDisciplines().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Semestr{" +
                "id=" + id +
                ", semestr='" + semestr + '\'' +
                ", duration='" + duration + '\'' +
                ", stetus=" + stetus +
                ", disciplines=" + disciplines +
                '}';
    }

}
