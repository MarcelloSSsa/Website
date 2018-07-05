package com.conexao.entidades;

import java.text.SimpleDateFormat;
import com.conexao.BD;


public class Consulta {
	private String nome;
	private String start_date;
	private String end_date;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getStartDate() {
		return start_date;
	}
	public void setStartDate(String start_date) {
		this.start_date = start_date;
	}
	public String getEndDate() {
		return end_date;
	}
	public void setEndDate(String end_date) {
		this.end_date = end_date;
	}

	
	public void inserirConsulta(String nome, String start_date, String end_date)throws Exception {	
			Consulta consulta = new Consulta();
			//String startdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(consulta.getStartDate());
			//String enddate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(consulta.getEndDate());
			
			if (this.validarDados(nome,start_date,end_date) ) {
				String comandoSQL;
				BD conexao = new BD();
				comandoSQL = "INSERT INTO events (event_id, event_name, start_date, end_date) VALUES (null,'"
						+ this.getNome()
						+"','"
						+ this.getStartDate()
						+"','"
						+ this.getEndDate()
						+ "')";
				
				conexao.execComando(comandoSQL);
				
				conexao.fechar();
			} else
					throw new Exception("Erro na validação dos dados!");

			}
			
			public boolean validarDados(String nome, String start_date, String end_date) {

				this.setNome(nome);
				this.setStartDate(start_date);
				this.setEndDate(end_date);
				return true;
			}


}
