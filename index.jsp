<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog Writing</title>
<style>
    /* Navbar */
    #navbar {
        background-color: #f4f4f4;
        overflow: hidden;
        border: 2px solid #333;
        padding: 5px;
    }
    #navbar ul { list-style: none; margin: 0; padding: 0; }
    #navbar ul li { display: inline-block; margin: 0 10px; border: 1px solid #555; padding: 8px 12px; }
    #navbar ul li a { text-decoration: none; color: #000; font-weight: bold; }
    #navbar ul li.left { float: left; }
    #navbar ul li.right { float: right; }

    /* Content box */
    #content {
        text-align: center;
        margin: 50px auto;
        padding: 30px;
        background-color: #e8f4fa;
        border-radius: 10px;
        width: 60%;
        position: relative;
        z-index: 2; /* above floating texts */
    }
    #content h1 { color: #2c3e50; font-size: 36px; margin-bottom: 15px; }
    #content h4 { color: #555; font-size: 20px; font-weight: normal; }

    /* Floating text area */
    #content1 {
        position: relative;
        width: 100%;
        height: 100vh;
        overflow: hidden;
        z-index: 1;
    }
    #content1 h3 {
        position: absolute;
        font-style: italic;
        font-family: Georgia, "Times New Roman", serif;
        font-size: 22px;
        opacity: 0.85;
        animation: float 12s linear infinite;
    }

    /* Individual positions and delays */
    #content1 h3:nth-child(1) { top: 10%; left: 5%; animation-delay: 0s; color: #ff5722; }
    #content1 h3:nth-child(2) { top: 25%; left: 70%; animation-delay: 2s; color: #3f51b5; }
    #content1 h3:nth-child(3) { top: 50%; left: 15%; animation-delay: 4s; color: #009688; }
    #content1 h3:nth-child(4) { top: 60%; left: 60%; animation-delay: 6s; color: #e91e63; }
    #content1 h3:nth-child(5) { top: 35%; left: 35%; animation-delay: 8s; color: #9c27b0; }
    #content1 h3:nth-child(6) { top: 15%; left: 45%; animation-delay: 1s; color: #ff9800; }
    #content1 h3:nth-child(7) { top: 75%; left: 25%; animation-delay: 3s; color: #4caf50; }

    /* Floating animation */
    @keyframes float {
        0% { transform: translate(0, 0) rotate(0deg); }
        25% { transform: translate(20px, -20px) rotate(5deg); }
        50% { transform: translate(-20px, 20px) rotate(-5deg); }
        75% { transform: translate(15px, -15px) rotate(3deg); }
        100% { transform: translate(0, 0) rotate(0deg); }
    }

    /* Footer */
    #footer {
        background: #333;
        color: white;
        text-align: center;
        padding: 15px 0;
        position: fixed;
        bottom: 0;
        width: 100%;
        z-index: 3;
    }
</style>
</head>
<body>

<!-- Navbar -->
<div id="navbar">
    <ul>
        
        <li class="right"><a href="login.jsp">Login</a></li>
        <li class="right"><a href="signup.jsp">Sign-Up</a></li>
    </ul>
</div>

<!-- Content box -->
<div id="content">
    <h1>Welcome to SLA Blogs</h1>
    <h4>Read our blogs and become a Intellectual</h4>
</div>

<!-- Floating texts -->
<div id="content1">
    <h3>Every thought deserves a voice.</h3>
    <h3>📖 Write your story. Share your world.</h3>
    <h3>💡 Where ideas meet words, and words meet readers.</h3>
    <h3>🌍 A place where your imagination finds its audience.</h3>
    <h3>✨ Write. Express. Inspire.</h3>
    <h3>Creativity flows here.</h3>
    <h3>Your words, your world.</h3>
</div>

<!-- Footer -->
<div id="footer">
    <p>&copy; 2025 SLA Blogs | All Rights Reserved</p>
</div>

</body>
</html>
