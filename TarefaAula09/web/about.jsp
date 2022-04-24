<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre</title>
    </head>
    
    
    <% if(session.getAttribute("usuario") != null){ %>
        <body>
            <a href="index.jsp"> Voltar </a>
            <hr>
            
            <h1>Nome</h1>
            <p>João Vitor Lourenço</p>

            <h2>RA</h2>
            <p>1290482022015</p>

            <h2>GitHub</h2>
            <a href="https://github.com/JoaoV1t0rL/Aula09"> Link </a>

        </body>
    <% }else{
       response.sendRedirect(request.getRequestURI() + "/../index.jsp");
    } %>
</html>
