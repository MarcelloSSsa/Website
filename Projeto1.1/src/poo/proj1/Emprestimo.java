package poo.proj1;

import java.util.Date;

public class Emprestimo {
	private String nomeAluno;
	private String tituloLivro;
	private Date dataEmprestimo = null;
	private Date dataDevolu��o = null;
	
	public void setNomeAluno(String nomeAluno){
		this.nomeAluno = nomeAluno;
	}
	
	public String getNomeAluno(){
		return nomeAluno;
	}
	
	public void setTituloLivro(String tituloLivro){
		this.tituloLivro = tituloLivro;
	}
	
	public String getTituloLivro(){
		return tituloLivro;
	}
	
	public void setDataEmprestimo(Date dataEmprestimo){
		this.dataEmprestimo = dataEmprestimo;
	}
	
	public Date getDataEmprestimo(){
		return dataEmprestimo;
	}
	
	public void setDataDevolu��o(Date dataDevolu��o){
		this.dataDevolu��o = dataDevolu��o;
	}
	
	public Date getDataDevolu��o(){
		return dataDevolu��o;
	}
}
