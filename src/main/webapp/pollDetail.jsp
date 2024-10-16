<%@page import="com.polling.entity.Poll"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poll Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            justify-content: center;
            align-items: center;
            background-color: rgb(236, 230, 230);
            margin: 30px 55px;
        }
        .poll-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }
        p {
            margin-bottom: 15px;
        }
        .submit-btn {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>  

    <div class="poll-container">
        <h1>Poll Details</h1>
        <p><strong>Favorite Programming Language</strong></p>
        <p>Description: Vote for your favorite programming language.</p>
         <%Poll poll=(Poll)request.getAttribute("poll"); %>
        <form action="saveVote?id=<%= poll.getId() %>" method="post">
            <label>
                <input type="radio" name="opt1" value="true">
                <%=poll.getOption1() %>
            </label><br><br>
            <label>
                <input type="radio" name="opt2" value="true">
                <%=poll.getOption2() %>
            </label><br><br>
            <button type="submit" class="submit-btn">Submit Vote</button>
        </form>
    </div>

</body>
</html>