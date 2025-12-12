<%-- 
    Document   : viewallblog
    Created on : 18 Sept 2025, 10:15:17 pm
    Author     : nites
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Blogs</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        /* Navbar */
        .navbar {
            background: #333;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .navbar h2 {
            margin: 0;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            background: red;
            border-radius: 5px;
        }
        .navbar a:hover {
            background: darkred;
        }

        /* Table */
        table {
            width: 90%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        table, th, td {
            border: 1px solid #333;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background: #f2f2f2;
        }
        a.action-link {
            margin-right: 10px;
            text-decoration: none;
            color: blue;
        }
    </style>
</head>
<body>

    <!-- ✅ Navbar -->
    <div class="navbar">
        <h2>All Blogs</h2>
        <a href="index.jsp">Logout</a>
    </div>

    <!-- ✅ Blog Table -->
    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Body</th>
            <th>Type</th>
            <th>Actions</th>
        </tr>

        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/blog", "root", "pass@123"
                );
                Statement stmt = con.createStatement();

                // Fetch Movie blogs
                ResultSet rsMovie = stmt.executeQuery("SELECT id, title, body FROM movie_blogs");
                while(rsMovie.next()) {
        %>
                    <tr>
                        <td><%= rsMovie.getInt("id") %></td>
                        <td><%= rsMovie.getString("title") %></td>
                        <td><%= rsMovie.getString("body") %></td>
                        <td>Movie</td>
                        <td>
                            <a class="action-link" href="editblog.jsp?type=movie&id=<%= rsMovie.getInt("id") %>">Edit</a>
                            <a class="action-link" href="deleteblog.jsp?type=movie&id=<%= rsMovie.getInt("id") %>">Delete</a>
                        </td>
                    </tr>
        <%
                }
                rsMovie.close();

                // Fetch Tech blogs
                ResultSet rsTech = stmt.executeQuery("SELECT id, title, body FROM tech_blogs");
                while(rsTech.next()) {
        %>
                    <tr>
                        <td><%= rsTech.getInt("id") %></td>
                        <td><%= rsTech.getString("title") %></td>
                        <td><%= rsTech.getString("body") %></td>
                        <td>Tech</td>
                        <td>
                            <a class="action-link" href="editblog.jsp?type=tech&id=<%= rsTech.getInt("id") %>">Edit</a>
                            <a class="action-link" href="deleteblog.jsp?type=tech&id=<%= rsTech.getInt("id") %>">Delete</a>
                        </td>
                    </tr>
        <%
                }
                rsTech.close();

                stmt.close();
                con.close();
            } catch(Exception ex) {
                out.println("Error: " + ex.getMessage());
            }
        %>
    </table>
</body>
</html>
