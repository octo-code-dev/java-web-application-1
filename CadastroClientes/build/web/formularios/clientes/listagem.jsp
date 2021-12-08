<%-- 
    Document   : listagem
    Created on : 13/09/2015, 22:15:30
    Author     : erich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes Cadastrados</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>
        
    </head>
    <body>
        <header>
            <div class="logo">
                <a class="imagelink" href="${pageContext.request.contextPath}/index.jsp">
                    <img src="${pageContext.request.contextPath}/images/database.png">
                </a>
                <span>Cadastro de Clientes</span>
            </div>
            <div class="headerPaginas">
                <a href="${pageContext.request.contextPath}/index.jsp">Home</a>
                <a href="${pageContext.request.contextPath}/formularios/clientes/listagem.jsp">Clientes</a>
                <a href="${pageContext.request.contextPath}/formularios/cidades/listagem.jsp">Cidades</a>
                <a href="${pageContext.request.contextPath}/formularios/estados/listagem.jsp">Estados</a>
            </div>
        </header>
        <main>
        <h1>Clientes Cadastrados</h1>
        
        <div class="divClientes">
            <button href="${pageContext.request.contextPath}/formularios/clientes/novo.jsp">Novo</a></button>
            <table class="tabelaListagem">

                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Sobrenome</th>
                        <th>Data de Nascimento</th>
                        <th>Email</th>
                        <th>CPF</th>
                        <th>Cidade</th>
                        <th>Alterar</th>
                        <th>Excluir</th>
                    </tr>
                </thead>
                <tbody>
                <jsp:useBean id="servicos" scope="page" class="cadastroclientes.servicos.ClienteServices"/>

                <c:forEach items="${servicos.todos}" var="cliente">
                    <tr>
                        <td>${cliente.id}</td>
                        <td>${cliente.nome}</td>
                        <td>${cliente.sobrenome}</td>
                        <fmt:formatDate pattern="dd/MM/yyyy" value="${cliente.dataNascimento}" var="data" scope="page"/>
                        <td>${cliente.dataNascimento}</td>
                        <td>${cliente.email}</td>
                        <td>${cliente.cpf}</td>
                        <td>${cliente.cidade.nome}</td>
                        <td><a href="${pageContext.request.contextPath}/processaClientes?acao=prepAlteracao&id=${cliente.id}">Alterar</a></td>
                        <td><a href="${pageContext.request.contextPath}/processaClientes?acao=prepExclusao&id=${cliente.id}">Excluir</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        </main>
        <footer>
            <div class="footer-flex">
                <div class="footer-text">
                    <p>LOREM IPSUM</p>
                    <span>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iste atque ea quis molestias. Fugiat pariatur maxime quis culpa corporis vitae repudiandae aliquam voluptatem veniam, est atque cumque eum delectus sint!</span>
                </div>
                <div class="footer-links">
                    <div>
                        <p>DELECTUS SINT</p>
                        <a href="#">Amet Consectetur</a>
                        <a href="#">Adipisicing Elit</a>
                        <a href="#">Iste Atque</a>
                        <a href="#">Ea Quis</a>
                    </div>
                    <div>
                        <p>DOLOR SIT</p>
                        <a href="#">Fugiat Pariatur</a>
                        <a href="#">Adipisicing Elit</a>
                        <a href="#">Maxime Quis</a>
                        <a href="#">Culpa Corpori</a>
                    </div>
                </div>
            </div>
            <div class="copyright">&copy; 2021 Cadastro de Clientes</div>
        </footer>
    </body>
</html>
