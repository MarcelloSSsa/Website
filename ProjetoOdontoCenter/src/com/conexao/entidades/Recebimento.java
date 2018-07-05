package com.conexao.entidades;

	
import java.sql.ResultSet;
import java.sql.SQLException;
import java.math.BigDecimal;
import java.util.ArrayList;

import com.conexao.BD;
	

	public class Recebimento {

		private String idCliente;
		private String data;
		private String idPag;
		private BigDecimal valor;
		private Double valor2;
		
		
		public String getIdPag() {
			return idPag;
		}
		public void setIdPag(String idPag) {
			this.idPag = idPag;
		}
		
		public String getIdCliente() {
			return idCliente;
		}
		public void setIdCliente(String idCliente) {
			this.idCliente = idCliente;
		}
		
		public String getData() {
			return data;
		}
		public void setData(String data) {
			this.data = data;
		}

		
		public BigDecimal getValor() {
			return valor;
		}
		public void setValor(BigDecimal valor) {
			this.valor = valor;
		}
		

		public Double getValor2() {
			return valor2;
		}
		public void setValor2(Double valor2) {
			this.valor2 = valor2;
		}
		
				public ArrayList<Recebimento> ConsultarCliente(String id) throws Exception{
			Recebimento r = new Recebimento();
			ArrayList<Recebimento> lista = new ArrayList<Recebimento>();
			
			
			try{
				String comandoSQL;
				BD conexao = new BD();
				System.out.println(id);
				comandoSQL = "select id_cli,data,valor from pagamento where id_cli = '"+id+"'";
				ResultSet consulta = conexao.execConsulta(comandoSQL);
				
				 
					
				while(consulta.next()){
					
					
					
					
				
				
					
					r.setIdCliente(consulta.getString("id_cli"));
					r.setData(consulta.getString("data"));
					r.setValor(consulta.getBigDecimal("valor"));
					
				
		
					lista.add(r);
			
				}
				conexao.fechar();
			}
			catch (SQLException e){
				throw new Exception("Erro na validação dos dados Recebimento!");
		}
			return lista;
	}

		public Recebimento ValidarAcesso(String id) throws Exception{
				String data;
				Recebimento r = new Recebimento();
				try{
				String comandoSQL;
				BD conexao = new BD();
				
				System.out.println("ID1:"+id);
				comandoSQL = "select id_cli,data,valor from pagamento where id_cli = '"+id+"'";
				ResultSet consulta = conexao.execConsulta(comandoSQL);
				System.out.println("ID2:"+id);
					
				while(consulta.next()){
						r.setIdCliente(consulta.getString("id_cli"));
						
						r.setValor(consulta.getBigDecimal("valor"));
						data=consulta.getString("id_cli");
					
						r.setData(ValidarData(data));
						
				}
						System.out.println("ID3:"+id);
							
				System.out.println("ID--: "+r.getIdCliente());
				conexao.fechar();
				}
				
				catch (SQLException e){
					throw new Exception("Erro na leitura dos recebimentos.");
			}
				return r;
		
	  }
	
		
	public String ValidarData(String id) throws Exception{
		String comandoSQL;
		BD conexao = new BD();
		String data = null;
		comandoSQL = "select DATE_FORMAT(data,'%d/%c/%Y') AS data from pagamento where id_cli='"+id+"'";
		ResultSet consulta = conexao.execConsulta(comandoSQL);
		while(consulta.next()){
			data=(consulta.getString("data"));
		}
		return data;
	}
	
	}


