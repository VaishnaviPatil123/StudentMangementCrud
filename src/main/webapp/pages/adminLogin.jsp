<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(120deg, #2980b9, #8e44ad);
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .admin-login-box {
            background: #fff;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 380px;
        }

        .admin-login-box h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .input-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: 500;
            margin-bottom: 8px;
            color: #444;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #6c5ce7;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button:hover {
            background-color: #4834d4;
        }

        .back-link {
            text-align: center;
            display: block;
            margin-top: 15px;
            color: #333;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <form class="admin-login-box" action="/adminLogin" method="post">
        <h2>Admin Login</h2>

        <div class="input-group">
            <label for="username">Admin Username</label>
            <input type="text" id="username" name="username" placeholder="Enter username" required>
        </div>

        <div class="input-group">
            <label for="password">Admin Password</label>
            <input type="password" id="password" name="password" placeholder="Enter password" required>
        </div>

        <button type="submit">Login</button>

        <a class="back-link" href="/home">← Back to Home</a>
    </form>

</body>
</html>
