<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-box {
            background: #fff;
            padding: 20px 25px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 320px;
        }

        h2 {
            text-align: center;
            margin-bottom: 15px;
            color: #333;
        }

        label {
            font-size: 10px;
            margin-top: 10px;
            display: block;
            color: #444;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        button {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            font-size: 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .register-btn {
            background-color: #4CAF50;
            color: white;
        }

        .register-btn:hover {
            background-color: #45a049;
        }

        .home-btn {
            background-color: #007bff;
            color: white;
        }

        .home-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="form-box">
    <h2>Register</h2>
    <form action="/saveStudent" method="post">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email ID</label>
        <input type="email" id="email" name="email" required>

        <label for="gender">Gender</label>
        <select id="gender" name="gender" required>
            <option value="" disabled selected>Select gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>

        <label for="course">Course</label>
        <select id="course" name="course" required>
            <option value="" disabled selected>Select course</option>
            <option value="B.Tech">B.Tech</option>
            <option value="Finance">Finance</option>
            <option value="Medical">Medical</option>
        </select>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <label for="confirmPassword">Confirm Password</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required>

        <button type="submit" class="register-btn">Register</button>
        <a href="/home"><button type="button" class="home-btn">Back to Home</button></a>
    </form>
</div>

</body>
</html>
