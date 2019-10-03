<%-- 
    Document   : listar
    Created on : 01/10/2019, 10:29:45
    Author     : kalebe
--%>

<%@page import="servlet.UsuarioControle"%>  <!-- linha de importaçao que falta acertar o usuarioControle-->
<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- N/A -->
<%@taglib uri="http://displaytag.sf.net" prefix="display"%> <!-- CHAMANDO O DISIPLAYTAG -->
<jsp:directive.page import="com.ginf.ginffinal.*" /> <!-- linha de importaçao correta ez -->
<jsp:directive.page import="java.util.*" />   <!-- linha de importaçao do java.util ez -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GINF CRUD EZ</title>
    </head>
    <body>
        <h1>Lista dos usuários</h1>
        <%
            List <Usuario> lista = UsuarioControle.listar();
            request.setAttribute( "usuario", lista );
        %>
        <display:table name="usuario">
            <display:column property="id" title="ID" paramProperty="checkbox"/></td> 
            <display:column property="nickname" title="Nickname" paramProperty="checkbox"/>
            <display:column property="email" title="Email"/>
            <display:column property="nome" title="Nome Completo"/>
            <display:column property="senha" title="Senha"/>
            <display:column value="alterar" title="Alterar" href="alterar.jsp" paramId="pid" paramProperty="id"/>             
            <display:column value="deletar" title="Deletar" autolink="true"  paramId="pid" paramProperty="id" href="${pageContext.request.contextPath}/ServletDeletar"/>
            <display:setProperty name="basic.msg.empty_list" value="Sem usuarios" />
        </display:table>
        <br><br>
        <a href="alterar.jsp?pid=" >Criar novo usuario</a>
    </body>
</html>