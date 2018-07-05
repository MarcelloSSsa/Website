package com.conexao.dados;

import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

import com.conexao.BD;

public class ClienteControle {
	private BD conexao;
	private ResultSet consulta;
	private String comandoSQL;
	private Cliente cliente;

	public ClienteControle() throws Exception {
		this.conexao = new BD();
		this.cliente = new Cliente();
	}

	// insere cliente no banco de dados
	public void inserirCliente(String nome, String senha, String sexo)
			throws Exception {
		if (this.validarDados(nome, senha, sexo)) {
			int codigo = this.getCodigo();
			this.comandoSQL = "insert into cliente(cod_cliente, nome, senha) values ("
					+ codigo
					+ ", '"
					+ cliente.getNome()
					+ "', '"
					+ cliente.getSenha()+"')";
			this.conexao.execComando(comandoSQL);
		} else
			throw new Exception("Erro na validação dos dados do cliente!");
	}

	// identifica o próximo código de cliente a ser inserido
	public int getCodigo() throws Exception {
		this.comandoSQL = "select max(cod_cliente) as cod from cliente";
		this.consulta = conexao.execConsulta(comandoSQL);

		int codigo = 1;

		if (this.consulta.next()) {
			try {
				codigo = Integer.parseInt(this.consulta.getString("cod")) + 1;
			} catch (Exception e) {
				codigo = 1;
			}
		}
		return codigo;
	}

	// valida dados do cliente
	public boolean validarDados(String nome, String senha, String sexo) {
		cliente.setNome(nome);
		cliente.setSenha(senha);
		return true;
	}

	public void fechar() throws Exception {
		this.conexao.fechar();
		this.consulta.close();
	}

	public List<Cliente> listarCliente() throws Exception {
		this.comandoSQL = "select * from cliente";
		this.consulta = conexao.execConsulta(comandoSQL);
		Cliente c;
		List<Cliente> listaCliente = new ArrayList<Cliente>();
		while (this.consulta.next()) {
			c = new Cliente();
			c.setCodigo(Integer.parseInt(this.consulta.getString("cod_cliente")));
			c.setNome(this.consulta.getString("nome"));
			c.setSenha(this.consulta.getString("senha"));
			listaCliente.add(c);
		}
		return listaCliente;
	}

	public Cliente validarAcessoCliente(String nome, String senha)
			throws Exception {
		this.comandoSQL = "select * from cliente where nome = '" + nome
				+ "' and senha = '" + senha + "'";
		this.consulta = this.conexao.execConsulta(comandoSQL);
		if (this.consulta.next()) {
			if (this.consulta.getString("cod_cliente") != null) {
				cliente.setCodigo(Integer.parseInt(this.consulta.getString("cod_cliente")));
				cliente.setNome(this.consulta.getString("nome"));
				cliente.setSenha(this.consulta.getString("senha"));
			}
		}
		return cliente;
	}
}
