<%-- 
    Document   : addblog
    Created on : 18 Sept 2025, 9:38:58 pm
    Author     : nites
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add movie blog to db</title>
    </head>
    <body>
        <%
         String title = request.getParameter("moviename");
         String body = request.getParameter("review");

         try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        // Replace db_name, username, password with your actual database info
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog", "root", "pass@123");
            Statement stmt = con.createStatement();

            String query = "INSERT INTO movie_blogs (title, body) VALUES ('" + title + "', '" + body + "')";
            int rows = stmt.executeUpdate(query);

            if (rows > 0) {
               response.sendRedirect("viewallblog.jsp");
            } else {
               out.println("<h3>Failed to add blog.</h3>");
            }

           stmt.close();
           con.close();
           } 
           catch(Exception ex) {
             out.println("Error: " + ex.getMessage());
           }
%>

        
    </body>
</html>
