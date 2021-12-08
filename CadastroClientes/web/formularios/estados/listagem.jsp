<%-- 
    Document   : listagem
    Created on : 13/09/2015, 16:29:44
    Author     : erich
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estados Cadastrados</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"
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
        
        <h1>Estados Cadastrados</h1>
        
        <p><a href="${pageContext.request.contextPath}/formularios/estados/novo.jsp">Novo Estado</a></p>
        
        <table class="tabelaListagem">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Sigla</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                
                <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.EstadoServices"/>
                <c:forEach items="${servicos.todos}" var="estado">
                    <tr>
                        <td>${estado.id}</td>
                        <td>${estado.nome}</td>
                        <td>${estado.sigla}</td>
                        <td><a href="${pageContext.request.contextPath}/processaEstados?acao=prepAlteracao&id=${estado.id}">Alterar</a></td>
                        <td><a href="${pageContext.request.contextPath}/processaEstados?acao=prepExclusao&id=${estado.id}">Excluir</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
                
                <p><a href="${pageContext.request.contextPath}/formularios/estados/novo.jsp">Novo Estado</a></p>
                <p><a href="${pageContext.request.contextPath}/index.jsp">Tela Principal</a></p>
    </body>
</html>
