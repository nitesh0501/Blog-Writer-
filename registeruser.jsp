<%-- 
    Document   : logincheck
    Created on : 18 Sept 2025, 6:28:58 pm
    Author     : nites
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Check</title>
    </head>
    <body>
        <% 
          String fname = request.getParameter("fname");
          String lname = request.getParameter("lname");
          String phno = request.getParameter("phno"); 
          String username = request.getParameter("uname");
          String password = request.getParameter("pword");
          String gender = request.getParameter("gender");

         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog", "root", "pass@123");

             Statement st = con.createStatement();
             String sql = "INSERT INTO signup(fname, lname, phno, username, password, gender) VALUES('"
                         + fname + "', '"
                         + lname + "', '"
                         + phno + "', '"
                         + username + "', '"
                         + password + "', '"
                         + gender + "')";

            int rows = st.executeUpdate(sql);
            if (rows > 0) {
             response.sendRedirect("login.jsp");
            } 

         st.close();
         con.close();

   }
         catch (Exception e) {
             out.println("Error: " + e.getMessage());
         }

            
            
        %>
    </body>
</html>
