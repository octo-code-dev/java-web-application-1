<%-- 
    Document   : index
    Created on : 08/09/2015, 22:07:37
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema para Cadastro de Clientes</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
    </head>
    <body>
        <header>
            <span>Sistema para Cadastro de Clientes</span>
            <div>
                <a href="${pageContext.request.contextPath}/index.jsp">Home</a>
                <a href="${pageContext.request.contextPath}/formularios/clientes/listagem.jsp">Clientes</a>
                <a href="${pageContext.request.contextPath}/formularios/cidades/listagem.jsp">Cidades</a>
                <a href="${pageContext.request.contextPath}/formularios/estados/listagem.jsp">Estados</a>
            </div>
        </header>
        <h1>Bem-vindo(a)</h1>
    </body>
</html>
