
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Results</title>
</head>
<body>
    <h1>Results</h1> <%-- heading for results--%>
    <ul>
        <%
            int correctCount = 0; 
            for (int i = 1; i <= 10; i++) {
                int userAnswer = Integer.parseInt(request.getParameter("answer" + i));
                int num1 = Integer.parseInt(request.getParameter("num1" + i));
                int num2 = Integer.parseInt(request.getParameter("num2" + i));
                int correctAnswer = Integer.parseInt(request.getParameter("correctAnswer" + i));
        %> <%-- Initializing counter for correct answers and creating variables based off of values from quiz.jsp--%>
        <li>
            <%= num1 %> + <%= num2 %> = <%=userAnswer %>
            <%
                if (userAnswer == correctAnswer) {
                    out.println("Correct");
                    correctCount++;
                } else {
                    out.println("Incorrect");
                }
            %>
        </li> <%-- creating a list of the equations along with showing if the answer was correct--%> 
        <%
            }
        %>
    </ul>
    <p>Correct Answers: <%= correctCount %></p> <%-- giving count of correct answers--%>
    <form action="quiz.jsp">
        <input type="submit" value="Try Again"> <%-- button to lead back to quiz.jsp--%>
    </form>
</body>
</html>