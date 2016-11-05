package ru.innopolis.servlets;

import ru.innopolis.modules.Customers;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * LoginServlet resource is used to validate the user input for login and forward them
 * to home page or in case of missing data, provide useful information to user.
 */
@WebServlet(name = "signIn", urlPatterns = {"/signIn"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email= req.getParameter("login");

        String password = req.getParameter("password");

        String errorMsg = null;

        if(email == null || email.equals("")){
            errorMsg ="User Email can't be null or empty";
        }
        if(password == null || password.equals("")){
            errorMsg = "Password can't be null or empty";
        }

        if(errorMsg != null){
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/signIn.jsp");
            PrintWriter out= resp.getWriter();
            out.println("<font color=red>"+"<center>" + errorMsg + "</center></font>");
            rd.include(req, resp);
        } else {

            Connection con = (Connection) getServletContext().getAttribute("DBConnection");
            PreparedStatement ps = null;
            ResultSet rs = null;
            try {
                ps = con.prepareStatement("select user_id, user_name, user_lastname," +
                        "user_email, user_password, user_country, user_gender, user_phone from Users where user_email=? and user_password=? limit 1");
                ps.setString(1, email);
                ps.setString(2, password);
                rs = ps.executeQuery();

                if(rs != null && rs.next()){

                    Customers user = new Customers(rs.getInt("user_id"),rs.getString("user_name"), rs.getString("user_lastname"), rs.getString("user_email"),
                            rs.getString("user_password"), rs.getString("user_country"), rs.getString("user_gender"), rs.getLong("user_phone"));
                    HttpSession session = req.getSession();
                    session.setAttribute("User", user);
                    resp.sendRedirect("home.jsp");


                }else{
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/signIn.jsp");
                    PrintWriter out= resp.getWriter();
                    out.println("<font color=red><center>No user found with given email id, please register first.</center></font>");
                    rd.include(req, resp);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                throw new ServletException("DB Connection problem.");
            }finally{
                try {
                    rs.close();
                    ps.close();
                } catch (SQLException e) {
                    System.out.println(e.getMessage());
                }

            }
        }




    }
}
