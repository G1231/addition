
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Addition Quiz</title>
</head>
<body>
    <h1>Addition Quiz</h1> <%-- header for addition quiz--%> 
    <form action="displayResults.jsp" method="post"> <%-- leads to displayResults once submitted--%>
        <%  
            for (int i = 1; i <= 10; i++) { 
                int num1 = (int) (Math.random() * 100);
                int num2 = (int) (Math.random() * 100); 
                int answer = num1 + num2;
        %> <%-- Generating 20 random numbers to add and calclating answer--%>
        <div>
            <%= num1 %> + <%= num2 %> =
            <input type="number" name="answer<%= i %>" required>
            <input type="hidden" name="num1<%= i %>" value="<%= num1 %>">
            <input type="hidden" name="num2<%= i %>" value="<%= num2 %>">
            <input type="hidden" name="correctAnswer<%= i %>" value="<%= answer %>">
        </div> <%-- displaying the equations for each set and creating textfield for answer. Also making hidden input types to use for displayResults --%>
        <%
            }
        %>
        <input type="submit" value="Submit"> <%-- Submit button --%>
    </form>
</body>
</html>
