<%-- 
    Document   : login
    Created on : 18 Sept 2025, 5:42:19 pm
    Author     : nites
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ffecd2, #fcb69f);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background: #fff;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 320px;
        }

        form h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #444;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            transition: 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #2196f3;
            box-shadow: 0 0 6px #2196f3;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            font-size: 15px;
            cursor: pointer;
            margin-top: 15px;
            background: #2196f3;
            color: white;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: #1976d2;
        }

        .extra-links {
            text-align: center;
            margin-top: 15px;
        }

        .extra-links a {
            text-decoration: none;
            color: #2196f3;
            font-size: 14px;
        }

        .extra-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <form action="logincheck.jsp" method="post">
        <h2>Login</h2>

        <label for="username">Username</label>
        <input type="text" name="username" id="username" placeholder="Enter your username" required>

        <label for="password">Password</label>
        <input type="password" name="password" id="password" placeholder="Enter your password" required>

        <input type="submit" value="Login">

        <div class="extra-links">
            <a href="signup.jsp">Don’t have an account? Sign Up</a>
        </div>
    </form>
     <%
        String errormsg = (String) session.getAttribute("errormsg");
        if (errormsg != null && !errormsg.isEmpty()) {
        %>
        <div style="color:red;"><%= errormsg %></div>
        <% } 
          session.removeAttribute("errormsg");
        %>
     <br>

</body>
</html>
