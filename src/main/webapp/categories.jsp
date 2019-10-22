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
				<img src="img/logo" alt="">
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
					<li><a href="review.jsp">Noticias</a></li>
					<li><a href="categories.jsp">Videos</a></li>
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
			</div>
		</div>
	</div>
	
	<section class="page-info-section set-bg" data-setbg="img/page-top-bg/1.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>Galeria de video</h2>
						<p>Poste aqui suas melhores jogas.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="page-section recent-game-page spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="row">
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="img/recent-game/1.jpg">
									<div class="cata new">#</div> 
								</div>
								<div class="rgi-content"> 
									
									<a href="#" class="comment">3 Comentarios</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="img/recent-game/2.jpg">
									<div class="cata racing"> #   </div>
								</div>
								<div class="rgi-content">
									<h5> </p>
									<a href="#" class="comment">3 Comentarios</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="img/recent-game/3.jpg">
									<div class="cata adventure"> #    </div>
								</div>
								<div class="rgi-content">
									<h5> </p>
									<a href="#" class="comment">3 Comentarios</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="img/recent-game/4.jpg">
									<div class="cata new">#</div>
								</div>
								<div class="rgi-content">
									<h5> </p>
									<a href="#" class="comment">3 Comentarios</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="img/recent-game/5.jpg">
									<div class="cata racing"># </div>
								</div>
								<div class="rgi-content">
									
									<a href="#" class="comment">3 Comentarios</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="img/recent-game/6.jpg">
									<div class="cata adventure"># </div>
								</div>
								<div class="rgi-content">
									
									<a href="#" class="comment">3 Comentarios</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="img/recent-game/7.jpg">
									<div class="cata new">#</div>
								</div>
								<div class="rgi-content">
									
									<a href="#" class="comment">3 Comentarios</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
						<div class="col-md-6">
							<div class="recent-game-item">
								<div class="rgi-thumb set-bg" data-setbg="img/recent-game/8.jpg">
									<div class="cata racing">#</div>
								</div>
								<div class="rgi-content">
									
									<a href="#" class="comment">3 Comentarios</a>
									<div class="rgi-extra">
										<div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
										<div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
									</div>
								</div>
							</div>	
						</div>
					</div>
					<div class="site-pagination">
						<span class="active">01.</span>
						<a href="#">02.</a>
						<a href="#">03.</a>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-7 sidebar pt-5 pt-lg-0">
					
					<div class="widget-item">
						<form class="search-widget">
							<input type="text" placeholder="Search">
							<button><i class="fa fa-search"></i></button>
						</form>
					</div>
					
					
					
					<div class="widget-item">
						<div class="feature-item set-bg" data-setbg="img/features/1.jpg">
							<span class="cata new">Novo</span>
							<div class="fi-content text-white">
								<h5><a href="#">
								<a href="#" class="fi-comment">3 Comentarios</a>
							</div>
						</div>
					</div>
				
					<div class="widget-item">
						<div class="review-item">
							<div class="review-cover set-bg" data-setbg="img/review/1.jpg">
								<div class="score yellow"></div>
							</div>
							<div class="review-text">
								<h5>Assasin?s Creed</h5>
								
							</div>
						</div>
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
						<h4 class="fw-title">últimas postagens</h4>
						<div class="latest-blog">
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">43 semanas atrás</div>
									<p> Para comemorar, a PUBG Corp, desenvolvedora do game, vai presentear todos os jogadores da versão para Xbox com 30 mil Battle Points. </p>
									<a href="#" class="lb-author">Por Admin</a>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="img/latest-blog/2.jpg"></div>
								<div class="lb-content">
									<div class="lb-date">Hoje</div>
									<p>Playerunknown?s Battlegrounds recebeu na noite de ontem uma atualização que trouxe vários novos elementos e alterações no game. Confira abaixo as novidades:

Antes de continuar: Tá precisando comprar cartões pré-pagos para Xbox One, PS4 ou Nintendo? O melhor lugar é na GCM Games, clique aqui e confira!

Sistema de região: O servidor / região será agora decidido automaticamente, dependendo da região local do jogador. Se você agrupar com um jogador de outra região, o matchmaking decidirá automaticamente a melhor região para jogar. </p>
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
						<h4 class="fw-title">Melhores Comentários</h4>
						<div class="top-comment">
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="img/authors/facebook.marcos.jpg"></div>
								<div class="tc-content">
									<p><a href="#">Marcos Vinícius</a> <span>on</span> Vocês viram a nova dlc do GTAV?</p>
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
									<p><a href="#">Ântoni Micael</a> <span>on</span> Eu não sei vocês  mais eu adoro jogar com a Shelly do Brawl Stars. </p>
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