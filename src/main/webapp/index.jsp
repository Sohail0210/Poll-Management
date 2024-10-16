<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Online Polling System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: rgb(236, 230, 230);
            
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin: 25px 40px;
        }
        h1 {
            color: #4a4a4a;
        }
        .nav-links {
            margin-top: 20px;
        }
        .nav-links a {
            text-decoration: none;
            color: #28a745;
            margin: 0 15px;
            font-size: 18px;
        }
        .nav-links a:hover {
            text-decoration: underline;
        }
        h5{
       		color: green;
    		margin-bottom: 0;
   			margin-top: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Online Polling System</h1>
        <div class="nav-links">
            <a href="createPoll">Create Poll</a>
            <a href="pollList">Poll List</a>
        </div>
        <div>
            <p>Manage and participate in polls with ease. Use the navigation links to create new polls or view and vote in existing ones.</p>
        </div>
        <h5>${msg}</h5>
    </div>
</body>
</html>