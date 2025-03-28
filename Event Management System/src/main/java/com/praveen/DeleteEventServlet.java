package com.praveen;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.sql.*;

@WebServlet("/deleteEvent")
public class DeleteEventServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int eventId = Integer.parseInt(request.getParameter("id"));  // Get event ID from query parameter

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Establish database connection
            conn = DBConnection.getConnection();

            // Query to delete the event by ID
            String query = "DELETE FROM events WHERE id = ?";
            stmt = conn.prepareStatement(query);
            stmt.setInt(1, eventId);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("upcomingEvents");  // Redirect to upcoming events page after successful deletion
            } else {
                response.sendRedirect("error.jsp");  // Redirect to error page if deletion fails
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            // Close resources
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
