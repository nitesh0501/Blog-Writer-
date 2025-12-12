<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Tech blog to DB</title>
    </head>
    <body>
       <%
         String title = request.getParameter("title");
         String body = request.getParameter("body");
         
        try {
           Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con = DriverManager.getConnection(
               "jdbc:mysql://localhost:3306/blog", "root", "pass@123"
           );
           
           Statement stmt = con.createStatement();
           
           // ✅ Build query using Statement
           String query = "INSERT INTO tech_blogs (title, body) VALUES ('" 
                          + title + "', '" + body + "')";
           
           int rows = stmt.executeUpdate(query);
           
           if (rows > 0) {
               response.sendRedirect("viewallblog.jsp");
           } else {
               out.println("<h3>❌ Failed to add blog.</h3>");
           }
           
           stmt.close();
           con.close();
        
        } catch(Exception ex) {
             out.println("Error: " + ex.getMessage());
        }
       %>
    </body>
</html>
