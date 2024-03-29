<%-- 
    Document   : postagem
    Created on : 23/10/2019, 12:22:50
    Author     : aluno
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.ginf.ginffinal.*"%>
<%@page import="util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Postagem</title>

        <meta charset="UTF-8">

        <meta name="keywords" content="warrior, game, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="img/favicon.ico" rel="shortcut icon"/>


        <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">


        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/animate.css"/>


    </head>
    <body>
        <div id="preloder">
            <div class="loader"></div>
        </div>
        <%@include file="menutop.jspf" %>
        <div class="latest-news-section">
            <div class="ln-title">Novas Noticias</div>
            <div class="news-ticker">
                <div class="news-ticker-contant">
                    <div class="nt-item"><span class="new">Novo</span> Novas atualização sobre o site.  </div>
                    <div class="nt-item"><span class="strategy">Estrategia</span> Novas atualizações dos jogos de Estrategia.  </div>
                    <div class="nt-item"><span class="racing">Corrida</span> Novas atualizações dos jogos de corrida . </div>
                    <div class="nt-item"><span class="strategy">MMORPG</span>Especial de nata no Black desert esta bombando. </div>
                    <div class="nt-item"><span class="racing">MOBA</span>A nova pré-temporada do LOL já começou a proveite. </div>
                </div>
            </div>
        </div>

        <h2>Postagens</h2>
        <br>
        <%
            Session session1 = HibernateUtil.getSession();
            String hql = "from Postagem u";
            //  Post postagem = (Post) session1.createQuery(hql).list();
            List<Postagem> lista = (List) session1.createQuery(hql).list();
            request.setAttribute("postagens", lista);
            System.out.println(lista);
            for (Iterator it = lista.iterator(); it.hasNext();) {
                Postagem postagem = (Postagem) it.next();
                String codigo = postagem.getIdPost().toString();
                usuario = postagem.getIdAdm();
                byte[] imagem = usuario.getFoto();
                String encodedImage = Base64.getEncoder().encodeToString(imagem);
        %>
        <img src="data:image/png;base64,<%=encodedImage%>" width='300' height='300'>
        <span id="titulo">
            <h2>Título: <%=postagem.getTitulo()%></h2>
            <br>
        </span>
        Conteúdo: <%=postagem.getConteudo()%><br><br>
        <b>Comentários:</b><br>
        <%
            for (Comentario post : postagem.getComentarioCollection()) {
                Usuario comentador = post.getUsuario();
        %>
        <%=comentador.getNome()%>: <%=post.getComentario()%><br>
        <%
            }
        %>
        <form method="post" action="ServletComentario">
            <div hidden>
                <input type="text" name="comentador" value="<%=usuario.getId()%>">
                <input type="text" name="publicacao" value="<%=postagem.getIdPost()%>">
                <input type="text" name="pid" value="">
            </div>
            <input type="text" name="comentario" value="">
            <input type="submit">
        </form>
        <br>
        <%
            }
        %>
        <section class="footer-top-section">
            <div class="container">
                <footer class="footer-section">
                    <div class="container">
                        <ul class="footer-menu">
                            <li><a href="index.jsp">Inicio</a></li>
                            <li><a href="review.jsp">Games</a></li>
                            <li><a href="categories.jsp">Blog</a></li>
                            <li><a href="community.jsp">Forums</a></li>
                            <li><a href="contact.jsp">Contato</a></li>
                        </ul>
                        <p class="copyright">
                            &copy;<script>document.write(new Date().getFullYear());</script> GINF Corporation <i class="fa fa-heart-o" aria-hidden="true"></i> <a href="" target="_blank"></a>
                        </p>
                    </div>
                </footer>
            </div>
        </section>

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.marquee.min.js"></script>
        <script src="js/main.js"></script>



    </body>
</html>