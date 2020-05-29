package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Produto;
import service.ProdutoService;

public class ExcluirProduto implements Command{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int codigo = Integer.parseInt(request.getParameter("codigo"));
		
		//Instanciar objeto tipo noticia:
		
		Produto produto = new Produto();
		produto.setCodigo(codigo);
		
		
		// enviar o objeto id para a service remover:
		
		ProdutoService produtoService = new ProdutoService();
		produtoService.excluir(produto);
		
		// Antes de despachar o usuário, adicionar um atributo à requisição:
		request.setAttribute("mensagem", "O produto foi excluido com sucesso!");
				
		// Despachar o usuário à parte de visão (apresentação - view):
		RequestDispatcher view = request.getRequestDispatcher("listaprodutos.jsp");
		view.forward(request, response);
	}

}
