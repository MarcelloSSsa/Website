package poo.proj1;

public class Pessoa {
	private String nome;
	private int ra;
	private int qtdEmprestimo = 0;
	private PessoaId tipo;
	
	public Pessoa (String nome, int ra, PessoaId tipo){
		this.nome = nome;
		this.ra = ra;
		this.tipo = tipo;
	}
	
	public String getNome(){
		return nome;
	}
	
	public void setNome(String nome){
		this.nome = nome;
	}
	
	public int getRa(){
		return ra;
	}
	
	public void setRa(int ra){
		this.ra = ra;
	}
	
	public int getQtdEmprestimo(){
		return qtdEmprestimo;
	}
	
	public void setQtdEmprestimo(int qtdEmprestimo){
		this.qtdEmprestimo = qtdEmprestimo;
	}
	
	public PessoaId getTipo(){
		return tipo;
	}
}
