package com.conexao.entidades;

import java.io.IOException;
import java.io.PrintWriter;

import com.conexao.dados.Cliente;
import com.conexao.dados.ClienteControle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private String userID = null;
	private String password = null;

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

		// get request parameters for userID and password
		String nome = request.getParameter("nome");
		String senha = request.getParameter("senha");
		Cliente cliente = new Cliente();

		try {

			ClienteControle controle = new ClienteControle();
			cliente = controle.validarAcessoCliente(nome, senha);

			userID = cliente.getNome();
			password = cliente.getSenha();

			if (userID.equals(nome) && password.equals(senha)) {
				HttpSession session = request.getSession();
				session.setAttribute("user", cliente.getNome());
				// setting session to expiry in 30 mins
				session.setMaxInactiveInterval(30 * 60);
				Cookie userName = new Cookie("user", cliente.getNome());
				userName.setMaxAge(30 * 60);
				response.addCookie(userName);

				if ((int) cliente.getCodigo() == 1)
					response.sendRedirect("volvoHome.jsp");
				if ((int) cliente.getCodigo() == 2)
					response.sendRedirect("fordHome.jsp");
				if ((int) cliente.getCodigo() == 3)
					response.sendRedirect("mercedesHome.jsp");
				if ((int) cliente.getCodigo() == 4)
					response.sendRedirect("manHome.jsp");
				if ((int) cliente.getCodigo() == 5)
					response.sendRedirect("ivecoHome.jsp");
				if ((int) cliente.getCodigo() == 6)
					response.sendRedirect("Cliente2.jsp");

			} /*else {
				response.sendRedirect("Login.html");
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/Login.html");
				PrintWriter out = response.getWriter();
				out.println("<font color=red>Usuário ou senha incorreto, tente novamente.</font>");
				rd.include(request, response);
				response.sendRedirect("Login.html");
			}*/

		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/Login.html");
			PrintWriter out = response.getWriter();
			//out.println("<meta charset=\""+"UTF-8"+"\">");
			out.println("<div align=\""+"center"+"\"><font color=red>Usuário ou senha incorreto, tente novamente.</font></div>");
			rd.include(request, response);
		}

	}

}
