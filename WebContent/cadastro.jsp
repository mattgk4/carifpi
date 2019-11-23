<%@	taglib	uri="http://java.sun.com/jsp/jstl/core"	prefix="c"	%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
<title>MG Cars &mdash; Cadastro</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon" />

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">


<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/style.css">

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
							<a href="index.jsp" style="font-color: white;"
								class="js-logo-clone">MG CARS</a>
						</div>
					</div>
					<div class="main-nav d-none d-lg-block">
						<nav class="site-navigation text-right text-md-center"
							role="navigation">
							<ul class="site-menu js-clone-nav d-none d-lg-block">
								<li class="has-children "><a href="index.html">Home</a>
									<ul class="dropdown">
										<li><a href="#">Menu One</a></li>
										<li><a href="#">Menu Two</a></li>
										<li><a href="#">Menu Three</a></li>
										<li class="has-children"><a href="#">Sub Menu</a>
											<ul class="dropdown">
												<li><a href="#">Menu One</a></li>
												<li><a href="#">Menu Two</a></li>
												<li><a href="#">Menu Three</a></li>
											</ul></li>
									</ul></li>

								<li><a href="shop.html">Shop</a></li>
								<li><a href="#">Catalogue</a></li>
								<li><a href="#">New Arrivals</a></li>
								<li class="active"><a href="contact.html">Contact</a></li>
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

		<div class="custom-border-bottom py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						</div>
				</div>
			</div>
		</div>


		<div class="site-section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2 class="h3 mb-3 text-black">Cadastro de Vei�culos</h2>
					</div>
					<div class="col-md-7">

						<form action="adicionaCarro" method="post">

							<div class="p-3 p-lg-5 border">
								<div class="form-group row">
									<div class="col-md-6">
										<label for="c_fname" class="text-black">Modelo<span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="modelo" name="modelo">
									</div>
									<div class="col-md-6">
										<label for="c_lname" class="text-black">Placa <span
											class="text-danger">*</span></label> <input type="text"
											class="form-control" id="c_lname" name="placa">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-12">
										<label for="c_email" class="text-black">Marca <span
											class="text-danger">*</span></label> <br />
										<!--<input type="email" class="form-control" id="c_email" name="c_email" placeholder=""> -->
										<select name="marcas" class="text-black">
											<option value="Audi">Audi</option>
											<option value="Lexus">Lexus</option>
											<option value="Mercedes Benz">Mercedes Benz</option>
											<option value="BMW">BMW</option>
											<option value="Land Rover">Land Rover</option>
											<option value="Chevrolet">Chevrolet</option>
											<option value="Fiat">Fiat</option>
											<option value="Honda">Honda</option>
											<option value="Hyundai">Hyundai</option>
											<option value="Renault">Renault</option>
											<option value="Toyota">Toyota</option>
											<option value="Volkswagen">Volkswagen</option>


										</select>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-md-6">
										<label for="c_lname" class="text-black">Valor de venda
											<span class="text-danger">*</span>
										</label> <input type="text" class="form-control" id="c_lname"
											name="preco">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-12">
										<label for="c_email" class="text-black">Foto <span
											class="text-danger">*</span></label> <input type="file"
											class="form-control" id="c_email" name="foto" placeholder="">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-6">
										<label for="c_lname" class="text-black">Data de
											registro <span class="text-danger">*</span>
										</label> <input type="text" class="form-control" id="c_lname"
											name="data">
									</div>
								</div>

								<div class="form-group row">
									<div class="col-lg-12">
									<a href="cadastro.html">
										<input type="submit" class="btn btn-primary btn-lg btn-block"
											value="Enviar">
									</a>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-5 ml-auto">
						<div class="p-4 border mb-3">
							<span class="d-block text-primary h6 text-uppercase">Pedro
								II</span>
							<p class="mb-0">197 Mountain Rua AB, Pedro II, Piaui, Brasil</p>
						</div>
						<div class="p-4 border mb-3">
							<span class="d-block text-primary h6 text-uppercase">Parnaíba</span>
							<p class="mb-0">56 Mountain Av. Chown, Parnai�ba, Piaui,
								Brasil</p>
						</div>
						<div class="p-4 border mb-3">
							<span class="d-block text-primary h6 text-uppercase">Teresina</span>
							<p class="mb-0">78 Mountain Quintura dos Inferrnos, Teresina,
								Piaui, Brasil</p>
						</div>

					</div>
				</dsiv>
			</div>
		</div>


		<footer class="site-footer custom-border-top">
			<div class="container">
				<div class="row">
				<div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
						<h3 class="footer-heading mb-4">Destaque</h3>
						<a href="#" class="block-6"> <img src="images/new/about_1.jpg"
							alt="Image placeholder" class="img-fluid rounded mb-4">
							<h3 class="font-weight-light  mb-0">The Car</h3>
							<p>BMW X6 &mdash; 2019</p>
						</a>
					</div>
					<div class="col-lg-5 ml-auto mb-5 mb-lg-0">
						<div class="row">
							<div class="col-md-12">
								<h3 class="footer-heading mb-4">Links R�pidos</h3>
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
									<li><a href="#">Com�rcio Port�vel</a></li>
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
									Pedro II, Piaui, Brasil</li>
								<li class="phone"><a href="tel://23923929210">+55 0800
										998 5687</a></li>
								<li class="email">contato@mgcars.com</li>
							</ul>
						</div>

						<div class="block-7">
							<form action="#" method="post">
								<label for="email_subscribe" class="footer-heading">Subscribe</label>
								<div class="form-group">
									<input type="text" class="form-control py-4"
										id="email_subscribe" placeholder="Email"> <input
										type="submit" class="btn btn-sm btn-primary" value="Send">
								</div>
							</form>
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