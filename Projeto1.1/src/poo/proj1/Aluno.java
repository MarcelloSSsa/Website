package poo.proj1;

public class Aluno {
	private String nome;
	private String ra;
	private int qtdEmprestimo = 0;
	
	public Aluno(String nome, String ra) {
		this.nome = nome;
		this.ra = ra;
	}

	public void setNome(String nome){
		this.nome = nome;
	}
	
	public String getNome(){
		return nome;
	}
	
	public void setRa(String ra){
		this.ra = ra;
	}
	
	public String getRa(){
		return ra;
	}
	
	public void setQtdEmprestimo(int qtdEmprestimo){
		this.qtdEmprestimo = qtdEmprestimo;
	}
	
	public int getQtdEmprestimo(){
		return qtdEmprestimo;
	}
}
