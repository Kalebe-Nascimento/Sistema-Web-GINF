<%@page import="servlet.UsuarioControle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<jsp:directive.page import="com.ginf.ginffinal.*" />
<jsp:directive.page import="java.util.List" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud</title>
    </head>
    <body>
        <form action="ServletComentario" method="post">
            <input type="text" name="comentario">
            <input type="submit">
        </form>
        <h1>Lista dos usuários</h1>
        <%
            List<Comentario> lista = UsuarioControle.listar();
            request.setAttribute( "comentarios", lista );
        %>
        <display:table name="comentarios">
            <display:column property="usuario.getNome()" title="Usuario"/>
            <display:column property="comentario" title="Comentario"/>
        </display:table>
        <br><br>
    </body>
</html>