<%-- 
    Document   : alterar
    Created on : 13/09/2015, 21:38:17
    Author     : erich
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cidade</title>
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
        
        <h1>Alterar Cidade</h1>
        
        <form method="post" action="${pageContext.request.contextPath}/processaCidades">
        
            <input name="acao" type="hidden" value="alterar"/>
            <input name="id" type="hidden" value="${requestScope.cidade.id}"/>
            
            <table>
                <tr>
                    <td class="alinharDireita">Nome:</td>
                    <td>
                        <input name="nome" type="text" size="20" value="${requestScope.cidade.nome}"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                        <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.EstadoServices"/>
                        
                        <select name="idEstado">
                            <c:forEach items="${servicos.todos}" var="estado">
                                
                                <c:choose>
                                    <c:when test="${requestScope.cidade.estado.id eq estado.id}">
                                        <option value="${estado.id}" selected="true">${estado.nome} - ${estado.sigla}</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="${estado.id}">${estado.nome} - ${estado.sigla}</option>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/cidades/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinharDireita">
                        <input type="submit" value="Alterar"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
