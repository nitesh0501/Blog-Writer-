<%-- 
    Document   : login
    Created on : 18 Sept 2025, 5:42:19 pm
    Author     : nites
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if(username != null && password != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/blog", "root", "pass@123"
            );

            String query = "SELECT * FROM signup WHERE username='" 
                            + username + "' AND password='" + password + "'";

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            if(rs.next()) {
                // Successful login
                response.sendRedirect("view.jsp");
            } else {
                // Invalid credentials
                session.setAttribute("errormsg", "Invalid username or password");
                response.sendRedirect("login.jsp");
            }

            rs.close();
            stmt.close();
            con.close();
        } catch(Exception ex) {
            out.println("Error: " + ex.getMessage());
        }
    } else {
        session.setAttribute("errormsg", "Please enter both username and password");
        response.sendRedirect("login.jsp");
    }
%>

</body>
</html>
