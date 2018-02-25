package poo.proj1;

public class AlunoPos extends Aluno {
	private int qtdEmprestimo = 5;

	public AlunoPos(String nome, String ra) {
		super(nome, ra);
	}
	
	public void setQtdEmprestimo(int qtdEmprestimo){
		this.qtdEmprestimo = qtdEmprestimo;
	}
	
	public int getQtdEmprestimo(){
		return qtdEmprestimo;
	}
}
