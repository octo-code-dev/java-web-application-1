<%-- 
    Document   : listagem
    Created on : 13/09/2015, 20:36:34
    Author     : erich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cidades Cadastradas</title>
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

        <h1>Cidades Cadastradas</h1>
        
        <p><a href="${pageContext.request.contextPath}/formularios/cidades/novo.jsp">Nova Cidade</a></p>
        
        <table class="tabelaListagem">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Estado</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>
                
                <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.CidadeServices"/>
                             
            <c:forEach items="${servicos.todos}" var="cidade">
                <tr>
                    <td>${cidade.id}</td>
                    <td>${cidade.nome}</td>
                    <td>${cidade.estado.sigla}</td>
                    <td><a href="${pageContext.request.contextPath}/processaCidades?acao=prepAlteracao&id=${cidade.id}">Alterar</a></td>
                    <td><a href="${pageContext.request.contextPath}/processaCidades?acao=prepExclusao&id=${cidade.id}">Excluir</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
                
                    <p><a href="${pageContext.request.contextPath}/formularios/cidades/novo.jsp">Nova Cidade</a></p>
                    
                    <p><a href="${pageContext.request.contextPath}/index.jsp">Tela Principal</a>
    </body>
</html>
