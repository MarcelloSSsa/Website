package poo.proj1;

public class Livro {
	private String titulo;
	private int quantidade;
	
	public Livro (String titulo, int quantidade){
		this.titulo = titulo;
		this.quantidade = quantidade;
	}
	
	public String getTitulo(){
		return titulo;
	}
	
	public void setTitulo(String titulo){
		this.titulo = titulo;
	}
	
	public int getQuantidade(){
		return quantidade;
	}
	
	public void setQuantidade(int quantidade){
		this.quantidade = quantidade;
	}

}
