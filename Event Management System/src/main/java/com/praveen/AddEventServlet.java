package com.praveen;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.sql.*;

@WebServlet("/addEvent")
public class AddEventServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eventName = request.getParameter("event_name");
        String eventDate = request.getParameter("event_date");
        String description = request.getParameter("description");

        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO events (event_name, event_date, description) VALUES (?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, eventName);
                stmt.setString(2, eventDate);
                stmt.setString(3, description);
                int rows = stmt.executeUpdate();
                if (rows > 0) {
                    response.sendRedirect("upcomingEvents");
                } else {
                    response.sendRedirect("error.jsp");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
