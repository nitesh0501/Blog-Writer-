<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Content Selection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f9f9f9;
            padding: 0;
            margin: 0;
        }

        /* Navbar */
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

        /* Form container */
        .form-container {
            background: #fff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
            max-width: 400px;
            margin: 80px auto 40px; /* top margin to leave space for navbar */
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .checkbox-group {
            margin: 15px 0;
        }

        .checkbox-group label {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 16px;
            color: #444;
            cursor: pointer;
        }

        input[type="checkbox"] {
            width: 18px;
            height: 18px;
            cursor: pointer;
        }

        .submit-btn {
            margin-top: 20px;
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            background: #4CAF50;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .submit-btn:hover {
            background: #45a049;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <a href="index.jsp">Logout</a>
    </div>

    <!-- Form -->
    <div class="form-container">
        <h2>Select Your Content Type</h2>
        <form action="blogpost.jsp" method="post">
            
            <div class="checkbox-group">
                <label>
                    <input type="checkbox" name="content" value="Tech">
                    Tech
                </label>
            </div>

            <div class="checkbox-group">
                <label>
                    <input type="checkbox" name="content" value="Movie Reviews">
                    Movie Reviews
                </label>
            </div>

            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>

</body>
</html>
