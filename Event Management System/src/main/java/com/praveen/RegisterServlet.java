package com.praveen;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");

        try {
            Connection conn = DBConnection.getConnection();

            // Check if username already exists
            String checkQuery = "SELECT username FROM users WHERE username = ?";
            PreparedStatement checkStmt = conn.prepareStatement(checkQuery);
            checkStmt.setString(1, username);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                // Username exists
                response.sendRedirect("register.jsp?error=Username already exists");
            } else {
                // Insert new user
                String insertQuery = "INSERT INTO users (name, username, password, dob) VALUES (?, ?, ?, ?)";
                PreparedStatement insertStmt = conn.prepareStatement(insertQuery);
                insertStmt.setString(1, name);
                insertStmt.setString(2, username);
                insertStmt.setString(3, password);
                insertStmt.setString(4, dob);

                int result = insertStmt.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("login.jsp");
                } else {
                    response.sendRedirect("register.jsp?error=Registration failed");
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
