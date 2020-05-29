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
	
	${ requestScope.mensagem }
	
	
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
				<form id="form_<%=p.getCodigo()%>" action="controller.do" method="post">
					<input type="hidden" name="command" value='AlterarProduto'>
					<input type="hidden" name="codigo" value='<%=p.getCodigo()%>'>
					

					
					<table  class="table col-md-4" border='1'>
					 
						<tr>				
							<td>
								Nome <input type='text' class="form-control" size="25" name='nome' value= '<%= p.getNome()%>'> <br>
								Valor R$ <input type='number' class="form-control" size="25" name='valor' value= '<%= p.getValor()%>'> <br>
								Estoque <input type='number' class="form-control" size="25" name='estoque' value= '<%= p.getEstoque()%>'> <br>								
								Descrição <textarea class="form-control" rows="3" name='descricao'><%= p.getDescricao()%> </textarea> <br>
															
										<a type="hidden" onclick="document.getElementById('form_<%=p.getCodigo()%>').submit();" type="submit"  href="#"> <span> Alterar </span></a>
							 			<a type="submit" href='controller.do?codigo=<%=p.getCodigo()%>&command=ExcluirProduto'><span> Excluir </span></a>
							 							 											
							</td>
							
						</tr>
						<tr>				
							<td>
								
							</td>
						</tr>			
					</table>
				</form>	
			</div>
			<br/>
			<% } %>

	
				
</body>
</html>