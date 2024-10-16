<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create a New Poll</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:rgb(236, 230, 230);
            justify-content: center;
            align-items: center;
            
        }
        .poll-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 40px 85px;
        }
        h1 {
            text-align: center;
            font-size: 24px;
        }
        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        textarea {
            resize: none;
            height: 80px;
        }
        .create-btn {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .create-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="poll-container">
        <h1>Create a New Poll</h1>
        <form action="createPoll" method="post">
            <label for="">Poll Title</label>
            <input type="text" name="title" required>
            <label for="">Description</label>
            <textarea name="description" required></textarea>
            <label for="">Option 1</label>
            <input type="text" name="option1" required>
            <label for="">Option 2</label>
            <input type="text" name="option2" required>
            <button type="submit" class="create-btn">Create Poll</button>
        </form>
    </div>
</body>
</html>