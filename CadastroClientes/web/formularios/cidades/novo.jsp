<%-- 
    Document   : novo
    Created on : 13/09/2015, 20:54:29
    Author     : erich
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nova Cidade</title>
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
        
        <h1>Nova Cidade</h1>
        
        <form method="post" action="${pageContext.request.contextPath}/processaCidades">
        
            <input name="acao" type="hidden" value="criar"/>
        
            <table>
                <tr>
                    <td class="alinharDireita">Nome:</td>
                    <td>
                        <input name="nome" type="text" size="20"/>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Estado:</td>
                    <td>
                        
                        <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.EstadoServices"/>
                        
                        <select name="idEstado">
                            <c:forEach items="${servicos.todos}" var="estado">
                                <option value="${estado.id}">${estado.nome} - ${estado.sigla}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/cidades/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinharDireita">
                        <input type="submit" value="Salvar"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
