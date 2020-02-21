package controllers;

import database.DBManager;
import entity.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentModifyingController", urlPatterns = "/studentModifying")
public class StudentModifyingController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStud = req.getParameter("idModifStud");
        Student student = DBManager.getStudentsById(idStud);
        req.setAttribute("student", student);
        req.getRequestDispatcher("/WEB-INF/jsp/studentModifying.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newSecondName = req.getParameter("secondName");
        String newName = req.getParameter("firstName");
        String newGroup = req.getParameter("group");
        String newDate = req.getParameter("receiptDate");

        String idStud = req.getParameter("studentId");
        DBManager.studentModifying(idStud, newSecondName, newName, newGroup, newDate );
        resp.sendRedirect("/students");
    }
}
