<%-- 
    Document   : excluir
    Created on : 13/09/2015, 22:04:35
    Author     : erich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Cidade</title>
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

        
        <h1>Excluir Cidade</h1>
        
        <form method="post" action="${pageContext.request.contextPath}/processaCidades">
        
            <input name="acao" type="hidden" value="excluir"/>
            <input name="id" type="hidden" value="${requestScope.cidade.id}"/>
            
            <table>
                <tr>
                    <td class="alinharDireita">Nome:</td>
                    <td>${requestScope.cidade.nome}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Estado:</td>
                    <td>${requestScope.cidade.estado.nome} - ${requestScope.cidade.estado.sigla}</td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/cidades/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinharDireita">
                        <input type="submit" value="Excluir"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
