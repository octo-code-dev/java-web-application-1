<%-- 
    Document   : excluir
    Created on : 13/09/2015, 19:49:37
    Author     : erich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Estado</title>
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
        
        <h1>Excluir Estado</h1>
        
        <form method="post" action="${pageContext.request.contextPath}/processaEstados">
        
            <input name="acao" type="hidden" value="excluir"/>
            <input name="id" type="hidden" value="${requestScope.estado.id}"/>
            
            <table>
                <tr>
                    <td class="alinharDireita">Nome:</td>
                    <td>${requestScope.estado.nome}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Sigla:</td>
                    <td>${requestScope.estado.sigla}</td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/estados/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinharDireita">
                        <input type="submit" value="Excluir"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
