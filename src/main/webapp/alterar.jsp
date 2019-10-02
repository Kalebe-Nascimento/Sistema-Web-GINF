<%-- 
    Document   : alterar
    Created on : 01/10/2019, 10:29:33
    Author     : kalebe
--%>


<%@page import="com.ginf.ginffinal.Usuario"%>
<%@page import="servlet.UsuarioControle"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.page import="com.ginf.ginffinal.*" />
<jsp:directive.page import="java.util.*" />
<jsp:directive.page import="util.HibernateUtil" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud</title>
    </head>
    <body>
        <h1>Leitura e alteração!</h1>
        <%
        //Criar variaveis
        Usuario usuario = new Usuario();
        String nome = "";
        String senha = "";
        String email = "";
        String nickname = "";
        //Captura id (se alteração)
        String idUsuario = request.getParameter("pid");
        //Localiza usuario (se alteração)
        if(!idUsuario.isEmpty()){
            usuario = UsuarioControle.buscar(Integer.parseInt(idUsuario));
            nome = usuario.getNome();
            senha = usuario.getSenha();  
            email = usuario.getEmail();  
            nickname = usuario.getNickname(); 
            
        }
        else{
            idUsuario = "";
        }
        
        %>
        <form method="POST" action="ServletGinf">
            <div hidden>  ID<input type="text" name="pid" value="<%=idUsuario%>"> </div>
               

            Nome<input type="text" name="nome" value="<%=nome%>">
            Senha<input type="text" name="senha" value="<%=senha%>">
           Email<input type="text" name="email" value="<%=email%>"> 
            Nickname<input type="text" name="nickname" value="<%=nickname%>">
            <input type="submit">
        </form>
    </body>
</html>