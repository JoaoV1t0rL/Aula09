<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loteria</title>
    </head>

    <% if (session.getAttribute("usuario") != null) { %>

    <a href="index.jsp"> Voltar </a>
    
    <br><hr>
    
    <h1>Dicas para loteria:</h1>
    <h2>Números gerados aleatoriamente</h2>
    <% Random aleatorio = new Random(); %>
    
    <table border="1">
        <tr>
            <td>Números</td>
        </tr>

        <tr>
            <% for (int i = 0; i <= 5; i++) {
                 int num = aleatorio.nextInt(60) + 1;%>
            <td><% out.print(num); %></td>
        </tr>
        <%}%> 
    </table>
    
    <% } else {
            response.sendRedirect(request.getRequestURI() + "/../index.jsp");
        }%>
</html>


