package database;

import entity.Discipline;
import entity.Student;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBManager {
    public static List<Discipline> getAllActiveDisciplines() {
        ArrayList<Discipline> disciplines = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_first?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM discipline where status = 1");
            while (rs.next()) {
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
                disciplines.add(discipline);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return disciplines;

    }

    public static void creatingDisciplines(String newDisc) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_first?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
            Statement stmt = con.createStatement();
            stmt.execute(" INSERT INTO `discipline` (`discipline`) VALUES ('"+ newDisc +"')\n;");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static List<Student> getAllActiveStudents() {
        ArrayList<Student> students = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_first?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM student WHERE status = 1");
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setSername(rs.getString("sername"));
                student.setName(rs.getString("name"));
                student.setGroup(rs.getString("group"));
                student.setDate(rs.getString("date"));
                students.add(student);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }

    public static void createStudents(String newSurname,String newName,String newGroup,String newDate) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_first?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
            Statement stmt = con.createStatement();
            stmt.execute("INSERT INTO `student` (`sername`, `name`, `group`, `date`) VALUES ('" + newSurname + "', '" + newName + "', '" + newGroup + "', '"  + newDate + "');\n");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }




    public static Discipline getDisciplinesById(String id) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_first?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM discipline where status = 1 and id = " + id);
            while (rs.next()) {
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
               return discipline;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void disciplineModifying(String idDisc, String newName) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_first?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
            Statement stmt = con.createStatement();
            stmt.execute("UPDATE `discipline` SET `discipline` = '" + newName + "' WHERE (`id` = '" + idDisc + "');\n");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Student getStudentsById(String id) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_first?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM student WHERE status = 1 and id = " + id);
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setSername(rs.getString("sername"));
                student.setName(rs.getString("name"));
                student.setGroup(rs.getString("group"));
                student.setDate(rs.getString("date"));
                return student;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void studentModifying(String idStud, String newSecondName, String newName, String newGroup, String newDate) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/students_first?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "1234");
            Statement stmt = con.createStatement();
            stmt.execute("UPDATE `student` SET `sername` = '"+ newSecondName +"', `name` = '"+ newName +"', `group` = '"+ newGroup +"', `date` = '"+ newDate +"' WHERE (`id` = '"+idStud+"');\n");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}



