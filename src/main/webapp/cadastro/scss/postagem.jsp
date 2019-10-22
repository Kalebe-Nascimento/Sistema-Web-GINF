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
        <form action="ServletPostagem" method="post">
            <h1>Postar</h1>
            <div hidden>
                <input type="text" name="id" value="">
            </div>
            <input type="text" name="conteudo">
            <input type="submit">
        </form>
        <%
            List<Postagem> listac = UsuarioControle.listarc();
            request.setAttribute( "postagem", listac );
        %>
        <display:table name="postagem">
            <display:column property="conteudo" title="Postagem"/>
        </display:table>
        <br><br>
    </body>
</html>
