<%-- 
    Document   : editblog
    Created on : 19 Sept 2025, 10:01:07 am
    Author     : nites
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Blog</title>
</head>
<body>
<%
    String type = request.getParameter("type"); // "movie" or "tech"
    String idStr = request.getParameter("id");
    int id = (idStr != null) ? Integer.parseInt(idStr) : 0;

    String title = "";
    String body = "";
    String tableName = "";

    if ("movie".equalsIgnoreCase(type)) {
        tableName = "movie_blogs";
    } else if ("tech".equalsIgnoreCase(type)) {
        tableName = "tech_blogs";
    }

    // If update form is submitted
    if (request.getParameter("update") != null) {
        String newTitle = request.getParameter("title");
        String newBody = request.getParameter("body");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/blog", "root", "pass@123"
            );
            Statement stmt = con.createStatement();

            String updateQuery = "UPDATE " + tableName +
                                 " SET title='" + newTitle + "', body='" + newBody +
                                 "' WHERE id=" + id;

            int rows = stmt.executeUpdate(updateQuery);
            if (rows > 0) {
                out.println("<h3>✅ Blog updated successfully!</h3>");
                out.println("<a href='viewallblog.jsp'>Back to All Blogs</a>");
            } else {
                out.println("<h3>❌ Update failed!</h3>");
            }

            stmt.close();
            con.close();
        } catch(Exception ex) {
            out.println("Error: " + ex.getMessage());
        }

    } else {
        // First time loading → fetch existing data
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/blog", "root", "pass@123"
            );
            Statement stmt = con.createStatement();

            String selectQuery = "SELECT title, body FROM " + tableName + " WHERE id=" + id;
            ResultSet rs = stmt.executeQuery(selectQuery);

            if (rs.next()) {
                title = rs.getString("title");
                body = rs.getString("body");
            }

            rs.close();
            stmt.close();
            con.close();
        } catch(Exception ex) {
            out.println("Error: " + ex.getMessage());
        }
%>
        <!-- Show form with pre-filled values -->
        <h2>Edit Blog</h2>
        <form method="post">
            <input type="hidden" name="id" value="<%= id %>">
            <input type="hidden" name="type" value="<%= type %>">
            <label>Title:</label><br>
            <input type="text" name="title" value="<%= title %>" required><br><br>
            
            <label>Content:</label><br>
            <textarea name="body" rows="5" cols="40" required><%= body %></textarea><br><br>
            
            <button type="submit" name="update">Update</button>
        </form>
<%
    }
%>
</body>
</html>
