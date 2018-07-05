package com.conexao.entidades;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastrarSecretaria
 */
@WebServlet("/CadastrarSecretaria")
public class CadastrarSecretaria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarSecretaria() {
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
		Secretaria r;
		
		try{
			r = new Secretaria();
			try{
				r.inserirDados(nome,cpf,sexo,email, senha,rua,numero,bairro,cidade,estado);
				response.sendRedirect("CadastroSecretariaForm.jsp");
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


