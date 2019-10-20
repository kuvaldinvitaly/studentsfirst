package database;

import entity.Discipline;

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


}

