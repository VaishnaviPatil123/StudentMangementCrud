<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Update Student</title>
    <style>
        body {
            background-color: #f0f4f8;
            font-family: Arial, sans-serif;
        }

        .update-form {
            max-width: 500px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 12px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .form-button {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
        }

        button {
            padding: 10px 20px;
            border: none;
            background: #007BFF;
            color: white;
            border-radius: 6px;
            cursor: pointer;
        }

        button:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>

<div class="update-form">
    <h2>Update Student</h2>
    <form action="/updateStudent" method="post">
        <input type="hidden" name="id" value="${student.id}"/>

        <label>Name</label>
        <input type="text" name="name" value="${student.name}" required>

        <label>Email</label>
        <input type="email" name="email" value="${student.email}" required>

        <label>Gender</label>
        <select name="gender" required>
            <option value="Male" ${student.gender == 'Male' ? 'selected' : ''}>Male</option>
            <option value="Female" ${student.gender == 'Female' ? 'selected' : ''}>Female</option>
        </select>

        <label>Course</label>
        <select name="course" required>
            <option value="BTech" ${student.course == 'BTech' ? 'selected' : ''}>BTech</option>
            <option value="BE" ${student.course == 'BE' ? 'selected' : ''}>BE</option>
            <option value="Finance" ${student.course == 'Finance' ? 'selected' : ''}>Finance</option>
            <option value="Medical" ${student.course == 'Medical' ? 'selected' : ''}>Medical</option>
        </select>

        <div class="form-button">
            <button type="submit">Update</button>
            <a href="/dashboard"><button type="button">Cancel</button></a>
        </div>
    </form>
</div>

</body>
</html>
