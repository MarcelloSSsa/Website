/*
Classe....:	BD
Descri��o.:	Classe com m�todos para:
 			- conex�o ao banco de dados
 			- execu��o de consulta SQL 
 			- comandos SQL (insert, update, delete) 
*/
package com.conexao;
import java.sql.*;

public class BD
{
	//declara��o das vari�veis de conex�o e de execu��o dos comandos
	private Connection conexao;
	private Statement comando;
	//declara��o de constantes para conex�o com banco de dados Oracle
	private String DRIVER 	= "com.mysql.jdbc.Driver";
	private String STRCON 	= "jdbc:mysql://localhost/odonto";
	private String USER 	= "root";
	private String PASS 	= "OdontoSystem";

	//construtor para conex�o com par�metros
	public BD(String drv, String strCon, String usr, String senha) throws Exception
	{
		try
		{
			Class.forName(drv);
		}
		catch (ClassNotFoundException e)
		{
			throw new Exception("Driver de conex�o JDBC n�o encontrado!");
		}

		try
		{
			conexao = DriverManager.getConnection(strCon, usr, senha);
		}
		catch (SQLException e)
		{
			throw new Exception("String de conex�o, usu�rio ou senha incorretos!");
		}

		try
		{
			comando = conexao.createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
		}
		catch (SQLException e) {
			throw new Exception("Falha na execu��o do comando de conex�o!");
		}
	}

	//construtor para conex�o sem par�metros (utiliza as constantes criadas)
	public BD() throws Exception 
	{
		try
		{
			Class.forName(DRIVER);
		}
		catch (ClassNotFoundException e) {
			throw new Exception("Driver de conex�o JDBC n�o encontrado!");
		}

		try
		{
			conexao = DriverManager.getConnection(STRCON, USER, PASS);
		}
		catch (SQLException e)
		{
			throw new Exception("String de conex�o, usu�rio ou senha incorretos!");
		}

		try
		{
			comando = conexao.createStatement(
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
		}
		catch (SQLException e) {
			throw new Exception("Falha na execu��o do comando de conex�o!");
		}
	}

	//m�todo para execu��o dos comandos: INSERT, UPDATE, DELETE
	public void execComando(String cmdSQL) throws Exception
	{
		try
		{
			this.comando.executeUpdate(cmdSQL);
		}
		catch (SQLException e)
		{
			throw new Exception("Falha na execu��o do comando de atualiza��o!");
		}
	}

	//m�todo para execu��o de consultas (comando SELECT)
	public ResultSet execConsulta(String qrySQL) throws Exception
	{
		ResultSet resultado = null;

		try
		{
			resultado = this.comando.executeQuery(qrySQL);
		}
		catch (SQLException e)
		{
			throw new Exception("Falha na execu��o do comando de consulta!");
		}

		return resultado;
	}

	//m�todo para fechar a conex�o
	public void fechar() throws Exception
	{
		try
		{
			this.comando.close();
			this.comando = null;

			this.conexao.close();
			this.conexao = null;
		}
		catch (SQLException e)
		{
			throw new Exception("Falha ao fechar conex�o!");
		}
	}
}