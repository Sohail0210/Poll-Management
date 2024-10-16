<%@page import="java.util.List"%>
<%@page import="com.polling.entity.Poll"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Poll List</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: rgb(236, 230, 230);
	justify-content: center;
	align-items: center;
	margin: 0;
}

.poll-container {
	background-color: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin: 47px 62px;
}

h1 {
	text-align: center;
	font-size: 24px;
	margin-bottom: 20px;
}

.poll-item {
	border-bottom: 1px solid #ccc;
	padding: 10px 0;
	display: flex;
	justify-content: space-between;
	align-items: center;
	position: relative;
}

.poll-title {
	font-weight: bold;
	color: #4CAF50;
	font-size: 18px;
}

.poll-description {
	font-size: 14px;
	color: #777;
}

.vote-link {
	color: #4CAF50;
	text-decoration: none;
	font-size: 16px;
	position: absolute;
	right: 0;
	top: -14px;
}

.vote-link:hover {
	text-decoration: underline;
}

table{
   margin-top : 30px;
   margin-bottom: 32px;
}
 table,th,tr,td{
    border: 1px solid black;
    border-collapse: collapse;
    padding: 5px;
    text-align: center;
}
td > a
{
 text-decoration: none;	
 color: #4CAF50;
}

</style>
</head>
<body>
	<div class="poll-container">
		<h1>Poll List</h1>
		<div class="poll-item">
			<div>
				<div class="poll-title">Favorite Programming Language</div>
				<div class="poll-description">Description: Vote for your
					favorite programming language</div>
				<table>
					<tr>
						<th>Title</th>
						<th>Description</th>
						<th>Option 1</th>
						<th>Option 2</th>
						<th>Count Option 1</th>
						<th>Count Option 2</th>
						<th>Vote</th>
					</tr>
					<%
					List<Poll> polls=(List<Poll>)request.getAttribute("list");
						for(Poll poll:polls)
						{
					%>
					<tr>
						<td><%= poll.getTitle() %></td>
						<td><%= poll.getDescription() %></td>
						<td><%= poll.getOption1()%></td>
						<td><%= poll.getOption2()%></td>
						<td><%= poll.getOpt1Count()%></td>
						<td><%= poll.getOpt2Count()%></td>
						<td><a href="vote?id=<%= poll.getId() %>" >Vote</a></td>
					</tr>
					<%} %>
				</table>
			<a href="/">Go Back</a>
			
		</div>
	</div>
</body>
</html>