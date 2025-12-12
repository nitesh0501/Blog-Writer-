<%-- 
    Document   : deleteblog
    Created on : 19 Sept 2025, 10:01:48 am
    Author     : nites
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Blog</title>
</head>
<body>
<%
    String type = request.getParameter("type"); // "movie" or "tech"
    String idStr = request.getParameter("id");
    int id = (idStr != null) ? Integer.parseInt(idStr) : 0;

    String tableName = "";
    if ("movie".equalsIgnoreCase(type)) {
        tableName = "movie_blogs";
    } else if ("tech".equalsIgnoreCase(type)) {
        tableName = "tech_blogs";
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/blog", "root", "pass@123"
        );
        Statement stmt = con.createStatement();

        String deleteQuery = "DELETE FROM " + tableName + " WHERE id=" + id;
        stmt.executeUpdate(deleteQuery);

        stmt.close();
        con.close();

        // ✅ Redirect back to viewallblog.jsp
        response.sendRedirect("viewallblog.jsp");

    } catch(Exception ex) {
        out.println("Error: " + ex.getMessage());
    }
%>
</body>
</html>
