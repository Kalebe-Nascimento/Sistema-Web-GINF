<%-- 
    Document   : postagem
    Created on : 23/10/2019, 12:22:50
    Author     : aluno
--%>

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

        <h2>Nova Postagem</h2>
        <section class="page-section spad contact-page">
            <div class="container">


                <div class="col-lg-8">
                    <div class="contact-form-warp">
                        <h4 class="comment-title">Faça a postagem</h4>
                            <div class="row">

                                <center>

                                    <form method="POST" action="ServletPostagem" enctype="multipart/form-data"> 
                                        <div class="form-group">
                                            <input type="text" class="form-input" name="titulo" id="name" placeholder="titulo">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-input" name="conteudo" id="email" placeholder="conteudo">
                                        </div>
                                        <div class="form-group">
                                            <input type="file" name="foto" accept="image/png, image/jpeg"><br><br>
                                        </div>

                                        <input type="submit" name="submit" id="submit" class="form-submit" value="Publicar">
                                    </form>


                                </center>


                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
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