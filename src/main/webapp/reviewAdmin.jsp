<%@page import="com.ginf.ginffinal.Usuario"%>
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


        <header class="header-section">
            <div class="container">

                <a class="site-logo" href="index.jsp">
                    <img src="img/" alt="">
                </a>
                <div class="user-panel">
                   <a href="usuarioperfil.jsp"> Bem-vindo, <!-- < %=usuario.getNome()%> -->
                </div>

                <div class="nav-switch">
                    <i class="fa fa-bars"></i>
                </div>

                <nav class="main-menu">
                    <ul>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="review.jsp">Games</a></li>
                        <li><a href="categories.jsp">Blog</a></li>
                        <li><a href="community.jsp">Forums</a></li>
                        <li><a href="contact.jsp">Contato</a></li>
                    </ul>
                </nav>
            </div>
        </header>



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

        <section class="page-info-section set-bg" data-setbg="img/page-top-bg/6.jpg">
            <div class="pi-content">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-6 text-white">
                            <h2>Postagem </h2>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>




        <section class="page-section spad contact-page">
            <div class="container">


                <div class="col-lg-8">
                    <div class="contact-form-warp">
                        <h4 class="comment-title">Faça a postagem</h4>
                        <form class="comment-form">
                            <div class="row">

                                <center>
                                    
                                    <form method="post" action="ServletPostagem" > 
            <form method="POST" id="signup-form" class="signup-form">
                <h2 class="form-title">Postagem</h2>
                <div class="form-group">
                    <input type="text" class="form-input" name="titulo" id="name" placeholder="titulo"/>
                </div>
                <div class="form-group">
                    <input type="text" class="form-input" name="conteudo" id="email" placeholder="conteudo"/>
                </div>
                <div class="form-group">
                    <input type="file" name="foto" accept="image/png, image/jpeg"><br><br>
                    </div>
                    
                    <input type="submit" name="submit" id="submit" class="form-submit" value="Publicar"/>
                    </form>
                                    
                                  
                                </center>


                            </div>
                    </div>
                    </form>
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

        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.marquee.min.js"></script>
        <script src="js/main.js"></script>



        </body>
        </html>