<%-- 
    Document   : viewcheck
    Created on : 18 Sept 2025
    Author     : nites
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Post Creation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            padding: 40px;
        }
        .navbar {
            background: #333;
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 8px 15px;
            border: 1px solid white;
            border-radius: 5px;
            transition: background 0.3s, color 0.3s;
        }

        .navbar a:hover {
            background: white;
            color: #333;
        }
        .post-container {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin: 12px 0 6px;
            font-weight: bold;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            margin-bottom: 15px;
            font-size: 15px;
        }
        textarea {
            resize: vertical;
            height: 150px;
        }
        button {
            background: #4CAF50;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="index.jsp">Logout</a>
    </div>

<%
    String content = request.getParameter("content");

    if (content != null) {
        
            if ("Tech".equalsIgnoreCase(content)) {
%>
    <div class="post-container">
        <h2>Create a Tech Post</h2>
        <form action="addtechblog.jsp" method="post">
            <label>Post Title</label>
            <input type="text" name="title" required>

            <label>Post Content</label>
            <textarea name="body" required></textarea>

            <button type="submit">Publish</button>
        </form>
    </div>
<%
            }
            if ("Movie Reviews".equalsIgnoreCase(content)) {
%>
    <div class="post-container">
        <h2>Create a Movie Review</h2>
        <form action="addmovieblog.jsp" method="post">
            <label>Movie Name</label>
            <input type="text" name="moviename" required>

            <label>Your Review</label>
            <textarea name="review" required></textarea>

            <button type="submit">Publish</button>
        </form>
    </div>
<%
            }
    }
     else {
%>
    <p style="text-align:center; color:red;">No option selected. Go back and choose a content type.</p>
<%
    }
%>

</body>
</html>
