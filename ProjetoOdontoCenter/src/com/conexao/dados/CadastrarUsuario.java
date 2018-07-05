
package com.conexao.dados;
import com.conexao.entidades.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastrarUsuario
 */
@WebServlet("/CadastrarCliente")
public class CadastrarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarUsuario() {
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
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String rua = request.getParameter("rua");
		String numero = request.getParameter("numero");
		String sexo = request.getParameter("sexo");
		String bairro = request.getParameter("bairro");
		String cidade = request.getParameter("cidade");
		String estado = request.getParameter("estado");
		Cliente cliente2;
		
		try{
			cliente2 = new Cliente();
			try{
				cliente2.inserirDados(nome,cpf,sexo,email, senha,rua,numero,bairro,cidade,estado);
				response.sendRedirect("CadastroForm.jsp");
			}
			catch (Exception e){
				System.out.println("Erro ao inserir");
			}
		
		}
			catch (Exception e){
				e.getStackTrace();
			} 
		
		
		
		}

		
		
}