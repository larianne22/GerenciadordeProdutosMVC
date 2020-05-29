<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="service.ProdutoService" %>
    <%@ page import="model.Produto" %>
    <%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/glyphicon.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>

<style type="text/css">
    * {    
    margin: 10px;
    }    
  </style>
  
<title>Listar Produto</title>
</head>
	
<body>
	
	
		<h1>Listar Produto</h1>
	
	
				
			<div>
				<div class="row float-right">
									
				</div>
				</br>			
			
			<form method = "post" action = "cadastro.jsp" >
				<input  type="submit" class="btn btn-outline-primary float-right" value = "Add Produto"> </input>
			</form>	
				
			</div>
			<br/>
			
				
			
				
			
			<%
			Produto produto = new Produto();
			produto.setCodigo(produto.getCodigo());
			
			ArrayList<Produto> lista;
			ProdutoService ps = new ProdutoService();
			lista = ps.listarProdutos();
				
			for (Produto p : lista){
				
			%>
			
			<div class="container">
				<form id="form_<%=p.getCodigo()%>" method="post" action='AlterarTarefa.do?id_tarefa=<%=p.getCodigo()%>'>
					
					<table  class="table col-md-4" border='1'>
					 
						<tr>				
							<td>
								<input type='text' size="25" name='titulo' value= ' <%= p.getNome()%> '> <br>
															
										<a onclick="document.getElementById('form_<%=p.getCodigo()%>').submit();" href="#"> <span class="glyphicon glyphicon-pencil"></span></a>
							 			<a href='ExcluirTarefa.do?id_tarefa=<%=p.getCodigo()%>'><span class="glyphicon glyphicon-trash"></span></a>
							 	</input>								 											
							</td>
							
						</tr>
						<tr>				
							<td>
								<textarea class="form-control" rows="3" name='descricao'><%= p.getDescricao()%> </textarea> <br>
							</td>
						</tr>			
					</table>
				</form>	
			</div>
			<br/>
			<% } %>

	
				
</body>
</html>