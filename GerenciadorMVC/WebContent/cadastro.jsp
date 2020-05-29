<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/glyphicon.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>

<style type="text/css">
    * {    
    margin: 10px;
    }    
  </style>
<title>Cadastro do produto</title>
</head>
<body>
	
	${ requestScope.mensagem }
	
	<form action="controller.do" method="post">
		<input type="hidden" name="command" value="CadastrarProduto">
		<div class="col-md-3">	
			Código: <input type="number" class="form-control" name="codigo"> <br>
			Nome: <input type="text" class="form-control" name="nome"> <br>
			Descrição: <input type="text" class="form-control"  name="descricao"> <br>
			Valor: <input type="number" class="form-control" step="0.1" name="valor"> <br>
			Estoque: <input type="number" class="form-control" name="estoque"> <br>
			<input class="btn btn-outline-primary" type="submit" value = "Cadastrar Produto">
		</div> 
	</form>

</body>
</html>