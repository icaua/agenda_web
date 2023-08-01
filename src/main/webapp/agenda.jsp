<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import ="model.JavaBeans" %>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>)request.getAttribute("contatos");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agenda de contatos</title>
<link rel="icon" href=imagens/agenda.png>
<link rel="stylesheet" href="style.css">
</head>
<body>



<section class="agenda">
<h1>Agenda de contatos </h1>


<a href="report" Class="botao1">
Relatorios
</a>
<a href="novo.html" class="botao">Novo Contato</a>

<table id="tabela">
<thead>
<tr>
<th> Id</th>
<th> nome</th>
<th> fone</th>
<th> E-mail</th>
<th>opções</th>
</tr>
</thead>

<tbody>
<%for (int i = 0; i < lista.size();i++) { %>

<tr>
<td> <%= lista.get(i).getIdcon() %></td>
<td> <%= lista.get(i).getNome()%></td>
<td> <%=lista.get(i).getFone()%></td>
<td> <%=lista.get(i).getEmail()%></td>
<td> <a href="select?idcon=<%= lista.get(i).getIdcon() %>" class="botao">Editar</a>
 <a href="javascript:confirmar(<%= lista.get(i).getIdcon() %>)" class="botao1">Excluir</a></td>
</tr>

<%}%>

</tbody>

</table>

</section>

<script type="text/javascript" src="scripts/confirmador.js"></script>
</body>
</html>