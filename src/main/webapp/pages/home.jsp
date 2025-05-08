<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Student Management</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #6dd5ed, #2193b0);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #fff;
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
        }

        h1 {
            color: #333;
            margin-bottom: 40px;
        }

        .btn {
            width: 100%;
            padding: 15px;
            margin: 15px 0;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            transition: background 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Student Management System</h1>

        <form action="studentRegister" method="get">
            <button type="submit" class="btn">Student Register</button>
        </form>

        <form action="studentLogin" method="get">
            <button type="submit" class="btn">Student Login</button>
        </form>

        <form action="adminLogin" method="get">
            <button type="submit" class="btn">Admin Login</button>
        </form>
    </div>
</body>
</html>
