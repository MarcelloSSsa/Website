package poo.proj1;


public class Livro {
	private String titulo;
	private int quantidade;
	private int quantidadeEmprestimo;
	
	
	public void setTitulo(String titulo){
		this.titulo = titulo;
	}
	
	public String getTitulo(){
		return titulo;
	}
	
	public void setQuantidade(int quantidade){
		this.quantidade = quantidade;
	}
	
	public int getQuantidade(){
		return quantidade;
	}
	
	public void setQuantidadeEmprestimo(int quantidadeEmprestimo){
		this.quantidadeEmprestimo = quantidadeEmprestimo;
	}
	
	public int getQuantidadeEmprestimo(){
		return quantidadeEmprestimo;
	}
}
