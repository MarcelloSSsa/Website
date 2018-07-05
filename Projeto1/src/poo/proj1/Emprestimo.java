package poo.proj1;
import java.util.Date;

public class Emprestimo {
	private String nome;
	private String titulo;
	private Date dateEntrega;
	private boolean devolvido; 
	
	public Emprestimo (String nome, String titulo, Date dateEntrega, boolean devolvido){
		this.nome = nome;
		this.titulo = titulo;
		this.dateEntrega = dateEntrega;
		this.devolvido = devolvido;
	}
	
	public String getNome(){
		return nome;
	}
	
	public void setNome(String nome){
		this.nome = nome;
	}
	
	public String getTitulo(){
		return titulo;
	}
	
	public void setTitulo(String titulo){
		this.titulo = titulo;
	}
	
	public Date getDataEntrega(){
		return dateEntrega;
	}
	
	public void setDataEntrega(Date dateEntrega){
		this.dateEntrega = dateEntrega;
	}
	
	public boolean getDevolvido(){
		return devolvido;
	}
	
	public void setDevolvido(boolean devolvido){
		this.devolvido = devolvido;
	}
}
