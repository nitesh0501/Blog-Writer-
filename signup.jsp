<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
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
            width: 350px;
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
        input[type="number"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            transition: 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="password"]:focus {
            border-color: #4caf50;
            box-shadow: 0 0 6px #4caf50;
            outline: none;
        }

        .gender-options {
            margin: 10px 0;
        }

        .gender-options label {
            margin-right: 15px;
            font-weight: normal;
            cursor: pointer;
        }

        input[type="submit"],
        input[type="reset"] {
            width: 48%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            font-size: 15px;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 15px;
        }

        input[type="submit"] {
            background: #4caf50;
            color: white;
        }

        input[type="reset"] {
            background: #f44336;
            color: white;
        }

        input[type="submit"]:hover {
            background: #45a049;
        }

        input[type="reset"]:hover {
            background: #e53935;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>

    <form action="registeruser.jsp">
        <h2>Register</h2>

        <label>First Name</label>
        <input type="text" name="fname" placeholder="Enter your first name" required>

        <label>Last Name</label>
        <input type="text" name="lname" placeholder="Enter your last name" required>

        <label>Mobile Number</label>
        <input type="number" name="phno" placeholder="Enter your mobile number" required>

        <label>Username</label>
        <input type="text" name="uname" placeholder="Choose a username" required>

        <label>Password</label>
        <input type="password" name="pword" placeholder="Enter your password" required>

        <label>Gender</label>
        <div class="gender-options">
            <input type="radio" name="gender" value="male" id="male">
            <label for="male">Male</label>

            <input type="radio" name="gender" value="female" id="female">
            <label for="female">Female</label>

            <input type="radio" name="gender" value="other" id="other">
            <label for="other">Other</label>
        </div>

        <div class="button-group">
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </div>
    </form>

</body>
</html>
