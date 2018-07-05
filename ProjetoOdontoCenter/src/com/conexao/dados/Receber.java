package com.conexao.dados;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.conexao.entidades.*;
/**
 * Servlet implementation class Recebimento
 */
@WebServlet("/RecebimentoFormulario")
public class Receber extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Receber() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		System.out.println("Ola");
		String id = request.getParameter("id");
		String valor = request.getParameter("valor");
	    Pagamento pagamento = new Pagamento();
	    System.out.println("IDRequest: "+id+"Valor: "+valor);
		
			try {
				pagamento.AlterarPagamento(id, valor);
				response.sendRedirect("RecebimentoForm.jsp");
				
			} catch (Exception e) {
				System.out.println("Erro Validar pagamento!!!");
			}
	

	}

}
