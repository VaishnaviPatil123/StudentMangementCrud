<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Welcome Page</title>
    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            text-align: center;
            padding: 100px;
            margin: 0;
        }

        .welcome-box {
            background: #ffffff;
            padding: 30px 50px;
            margin: auto;
            width: 400px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #333;
        }

        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #388E3C;
        }
    </style>
</head>
<body>
    <div class="welcome-box">
        <h1>Welcome, <c:out value="${name}" /></h1>
        <p>You have successfully logged in / registered.</p>

        <a href="/home" class="btn">Back to Home</a>
    </div>
</body>
</html>
