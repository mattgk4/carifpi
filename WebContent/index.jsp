<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="br.com.ifpi.carifpi.dao.*, java.util.*,br.com.ifpi.carifpi.modelo.*,java.text.DecimalFormat,java.text.SimpleDateFormat"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:if test="${param.idcar != null}">
	<%
		CarroDao dao = new CarroDao();
		dao.remove(new Carro(new Long(request.getParameter("idcar"))));
%>
</c:if>


<!DOCTYPE<html>
<head>
<title>MG Cars</title>
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Rubik:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<link rel="stylesheet" href="css/aos.css">
<script type="text/javascript" src="js/app.js"></script>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/style.css">

<link rel="sortcut icon" href="images/" type="image/x-icon" />


</head>

<body>

	<div class="site-wrap">


		<div class="site-navbar bg-white py-2">

			<div class="search-wrap">
				<div class="container">
					<a href="#" class="search-close js-search-close"><span
						class="icon-close2"></span></a>
					<form action="#" method="post">
						<input type="text" class="form-control"
							placeholder="Search keyword and hit enter...">
					</form>
				</div>
			</div>

			<div class="container">
				<div class="d-flex align-items-center justify-content-between">
					<div class="logo">
						<div class="site-logo">
							<a href="index.html" class="js-logo-clone">MG Cars</a>
						</div>
					</div>
					<div class="main-nav d-none d-lg-block">
						<nav class="site-navigation text-right text-md-center"
							role="navigation">
							<ul class="site-menu js-clone-nav d-none d-lg-block">
								<li class="has-children active"><a href="index.html">Showroom</a>
									<ul class="dropdown">
										<li><a href="#">Audi</a></li>
										<li><a href="#">BMW</a></li>
										<li><a href="#">Mercedes Benz</a></li>
										<li class="has-children"><a href="#">Land Rover</a>
											<ul class="dropdown">
												<li><a href="#">Discovery</a></li>
												<li><a href="#">Evoque</a></li>
												<li><a href="#">HSE</a></li>
											</ul></li>
									</ul></li>

								<li><a href="listagem.jsp">Catalogo</a></li>
								<li><a href="cadastro.jsp">Cadastro</a></li>
							</ul>
						</nav>
					</div>
					<div class="icons">
						<a href="#" class="icons-btn d-inline-block js-search-open"><span
							class="icon-search"></span></a> <a href="#"
							class="icons-btn d-inline-block"><span class="icon-heart-o"></span></a>
						<a href="cart.html" class="icons-btn d-inline-block bag"> <span
							class="icon-shopping-bag"></span> <span class="number">2</span>
						</a> <a href="#"
							class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span
							class="icon-menu"></span></a>
					</div>
				</div>
			</div>
		</div>

		<div class="site-blocks-cover" data-aos="fade">
			<div class="container">

				<div class="row align-items-center">
					<div class="col-lg-5 text-center">
						<div class="featured-hero-product w-100">
							<h1 class="mb-2">bmw i8</h1>
							<h4>Sports</h4>
							<div class="price mt-3 mb-5">
								<strong>R$ 780.000,00</strong>
							</div>
							<p>
								<a href="#" class="btn btn-outline-primary rounded-0">Shop
									Now</a> <a href="#" class="btn btn-primary rounded-0">Shop Now</a>
							</p>
						</div>
					</div>
					<div class="col-lg-7 text-center text-lg-right">
						<img src="images/new/person_transparent.png" alt="Image"
							class="img-fluid img-1">
					</div>

				</div>
			</div>

		</div>


		<div class="products-wrap border-top-0">
			<div class="container-fluid">
				<div class="row no-gutters products">
					<!-- Listando Veículos -->
					<jsp:useBean id="dao" class="br.com.ifpi.carifpi.dao.CarroDao"></jsp:useBean>
					<jsp:useBean id="carro" class="br.com.ifpi.carifpi.modelo.Carro" />
					
					<c:forEach var="carro" items="${dao.lista}">
						<div class="col-6 col-md-6 col-lg-4">
							<div class="item">
								<img src="images/produtos/${carro.foto}" alt="Image"
									class="img-fluid">
								<div class="item-info">
									<h3>${carro.modelo}</h3>
									<span class="collection d-block">${carro.marca}</span> <strong
										class="price"><fmt:formatNumber
											value="${carro.precoVenda}" pattern="R$ #,##0.00" /></strong> <br />
									<a href="AlterarServlet.jsp?id=${carro.idcarro}"><i
										class="icon-pencil" style="margin-right: 8px;"></i></a> <a
										href="index.jsp?idcar=${carro.idcarro}"
										onclick="return confirm('Tem certeza que deseja deletar o item?')"><i
										class="icon-trash""></i></a>
								</div>
							</div>
						</div>
					</c:forEach>


				</div>
			</div>
		</div>


		<footer class="site-footer custom-border-top">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

						<div class="block-7">
							<h3 class="footer-heading mb-4">Quem somos</h3>
							<p>Loja especializada em carros de alta perfomance levando
								aos clientes segurança, tecnologia e facilidaes.</p>
						</div>
						<div class="block-7">
							<form action="#" method="post">
								<label for="email_subscribe" class="footer-heading">Receba
									novidades</label>
								<div class="form-group">
									<input type="text" class="form-control py-4"
										id="email_subscribe" placeholder="Email"> <input
										type="submit" class="btn btn-sm btn-primary" value="Send">
								</div>
							</form>
						</div>
					</div>
					<div class="col-lg-5 ml-auto mb-5 mb-lg-0">
						<div class="row">
							<div class="col-md-12">
								<h3 class="footer-heading mb-4">Links Rápidos</h3>
							</div>
							<div class="col-md-6 col-lg-4">
								<ul class="list-unstyled">
									<li><a href="#">Vendas online</a></li>
									<li><a href="#">Novidades</a></li>
									<li><a href="#">Loja de carros</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-lg-4">
								<ul class="list-unstyled">
									<li><a href="#">Comércio Portável</a></li>
									<li><a href="#">Entrega</a></li>
									<li><a href="#">Website development</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-lg-4">
								<ul class="list-unstyled">
									<li><a href="#">Ponto de Venda</a></li>
									<li><a href="#">Hardware</a></li>
									<li><a href="#">Software</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-3">
						<div class="block-5 mb-5">
							<h3 class="footer-heading mb-4">Contato</h3>
							<ul class="list-unstyled">
								<li class="address">446 Av. Doutor Jose Lourenco Mourao,
									Pedro II, PiauÃ­, Brasil</li>
								<li class="phone"><a href="tel://23923929210">+55 0800
										998 5687</a></li>
								<li class="email">contato@mgcars.com</li>
							</ul>
						</div>


					</div>
				</div>
				<div class="row pt-5 mt-5 text-center">
					<div class="col-md-12">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="icon-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>

				</div>
			</div>
		</footer>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/main.js"></script>

</body>

</html>