<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="br.com.ifpi.carifpi.dao.*, java.util.*,br.com.ifpi.carifpi.modelo.*,java.text.DecimalFormat,java.text.SimpleDateFormat"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listagem de veículos</title>
<link rel="stylesheet" href="css/tabelaEstilo.css">
</head>
<body>
	<center>
		<h2 style="font-family: arial, sans-serif;: ">LISTAGEM DE
			VEÍCULOS</h2>
	</center>
	<center>
		<table class="tabela" border="1px">
			<tr>
				<th>ID
				</td>
				<th>MODELO
				</td>
				<th>MARCA
				</td>
				<th>PREÇO
				</td>
				<th>PLACA
				</td>
				<th>FOTO
				</td>
				<th>DATA DE REGISTRO</th>
				<th>EDITAR
				</td>
				<!-- LISTAR VEÍCULOS -->
			</tr>
			<jsp:useBean id="dao" class="br.com.ifpi.carifpi.dao.CarroDao"></jsp:useBean>
			<jsp:useBean id="carro" class="br.com.ifpi.carifpi.modelo.Carro" />
			<c:forEach var="carro" items="${dao.lista}">
				<tr>
					<td>${carro.idcarro}</td>
					<td>${carro.modelo}</td>
					<td>${carro.marca}</td>
					<td><fmt:formatNumber value="${carro.precoVenda}"
							pattern="R$ #,##0.00" /></td>
					<td>${carro.placa}</td>
					<td>images/produtos/${carro.foto}</td>
					<td><fmt:formatDate value="${carro.dataRegistro.time}"
							pattern="dd/MM/yyyy" /></td>
					<td><i class="icon-pencil"></i><i class="icon-trash"></i></td>
				</tr>
			</c:forEach>

		</table>
	</center>
</body>
</html>