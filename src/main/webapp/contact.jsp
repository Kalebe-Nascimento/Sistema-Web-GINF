
<%@page import="com.ginf.ginffinal.Usuario"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>GINF</title>
        <meta charset="UTF-8">

        <meta name="keywords" content="warrior, game, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="img/favicon" rel="shortcut icon"/>


        <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">


        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/animate.css"/>

        <%
            Usuario usuario = (Usuario) session.getAttribute("UsuarioLogado");
        %>


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
                    <a href="usuarioperfil.jsp">Bem-vindo, <%=usuario.getNome()%>!</a>
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
				<div class="nt-item"><span class="new">Novo</span> Novas atualiza��o sobre o site.  </div>
				<div class="nt-item"><span class="strategy">Estrategia</span> Novas atualiza��es dos jogos de Estrategia.  </div>
				<div class="nt-item"><span class="racing">Corrida</span> Novas atualiza��es dos jogos de corrida . </div>
				<div class="nt-item"><span class="strategy">MMORPG</span>Especial de nata no Black desert esta bombando. </div>
				<div class="nt-item"><span class="racing">MOBA</span>A nova pr�-temporada do LOL j� come�ou a proveite. </div>
			</div>
		</div>
	</div>

	<section class="page-info-section set-bg" data-setbg="img/page-top-bg/5.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>Contate-nos</h2>
						<p></p>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="page-section spad contact-page">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="comment-title">Contate-nos</h4>
					<p></p>
					<div class="row">
						<div class="col-md-9">
							<ul class="contact-info-list">
								
								<li><div class="cf-left">E-mail</div><div class="cf-right">exemplo@gmail.com</div></li>
							</ul>
						</div>
					</div>
					<div class="social-links">
						
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-linkedin"></i></a>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="contact-form-warp">
						<h4 class="comment-title">Deixe uma resposta</h4>
						<form class="comment-form">
							<div class="row">
								<div class="col-md-6">
									<input type="text" placeholder="Nome">
								</div>
								<div class="col-md-6">
									<input type="email" placeholder="Email">
								</div>
								<div class="col-lg-12">
									<input type="text" placeholder="Objetivo">
									<textarea placeholder="Message"></textarea>
									<button class="site-btn btn-sm">Enviar</button>
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
			<div class="footer-top-bg">
				<img src="img/footer-top-bg.png" alt="">
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="footer-logo text-white">
						<img src="img/footer-logo" alt="">
						<p></p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget mb-5 mb-md-0">
						<h4 class="fw-title">�ltimas postagens</h4>
						<div class="latest-blog">
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">43 semanas atr�s</div>
									<p> Para comemorar, a PUBG Corp, desenvolvedora do game, vai presentear todos os jogadores da vers�o para Xbox com 30 mil Battle Points. </p>
									<a href="#" class="lb-author">Por Admin</a>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/2.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">Hoje</div>
									<p>Playerunknown?s Battlegrounds recebeu na noite de ontem uma atualiza��o que trouxe v�rios novos elementos e altera��es no game. Confira abaixo as novidades:

Antes de continuar: T� precisando comprar cart�es pr�-pagos para Xbox One, PS4 ou Nintendo? O melhor lugar � na GCM Games, clique aqui e confira!

Sistema de regi�o: O servidor / regi�o ser� agora decidido automaticamente, dependendo da regi�o local do jogador. Se voc� agrupar com um jogador de outra regi�o, o matchmaking decidir� automaticamente a melhor regi�o para jogar. </p>
									<a href="#" class="lb-author">Por Admin</a>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/3.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">Dezembro 20 , 2018</div>
									<p>Evento de natal </p>
									<a href="#" class="lb-author">Por Admin</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget">
						<h4 class="fw-title">Melhores Coment�rios</h4>
						<div class="top-comment">
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/facebook.marcos.jpg"></div>
								<div class="tc-content">
									<p><a href="#">Marcos Vin�cius</a> <span>on</span> Voc�s viram a nova dlc do GTAV?</p>
									<div class="tc-date">Maio 22, 2018</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/carlos.jpg"></div>
								<div class="tc-content">
									<p><a href="#">Carlos Eduardo</a> <span>off</span> Alguem viu a nova temporada do League of Legends?  </p>
									<div class="tc-date">Julho 24, 2018</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/joyce.jpg"></div>
								<div class="tc-content">
									<p><a href="#">Joyce Kelly</a> <span>off</span> Estou adorando jogar Free Frire. </p>
									<div class="tc-date">Dezembro 18, 2018</div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/antoni.jpg"></div>
								<div class="tc-content">
									<p><a href="#">�ntoni Micael</a> <span>on</span> Eu n�o sei voc�s mais eu adoro jogar com a Shelly do Brawl Stars. </p>
									<div class="tc-date">Fevereiro 21, 2018</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
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
 &copy;<script>document.write(new Date().getFullYear());</script>GINF Corporation <i class="fa fa-heart-o" aria-hidden="true"></i> <a href="" target="_blank"></a>
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