package poo.proj1;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Scanner;


public class Biblioteca {	
	
	private int qtdPessoa = 0;
	private int qtdLivro = 0;
	private int qtdEmprestimo = 0;
	final int tamanho = 200;
	private Pessoa[] pessoaLista = new Pessoa[tamanho];
	private Livro[] livroLista = new Livro[tamanho];
	private Emprestimo[] emprestimoLista = new Emprestimo[tamanho];
	
	int opcao;
	Scanner input = new Scanner (System.in);
	Calendar cal = Calendar.getInstance();
	Date dataSystem;
	
	public String cadastro (String nome, int ra, PessoaId tipo){
		for(int i=0; i<qtdPessoa; i++){
			if(pessoaLista[i].getRa() == ra){
				return "Já existe um usuário com esse RA.";
			}
		}
		
		switch(tipo)
		{
			case Aluno:
				pessoaLista[qtdPessoa] = new Aluno(nome, ra);
				break;
			case Professor:
				pessoaLista[qtdPessoa] = new Professor(nome, ra);
				break;
			case AlunoPos:
				pessoaLista[qtdPessoa] = new AlunoPos(nome, ra);
				break;
			default:
				System.out.printf("\nOpção Inválida.");
		}
			
		qtdPessoa ++;
		return "Cadastro concluido";
	}
	
	public String cadLivro (String titulo, int qtd){
		for(int i=0; i<qtdLivro; i++){
			if(livroLista[i].getTitulo().equals(titulo)){
				livroLista[i].setQuantidade(livroLista[i].getQuantidade() + qtd);
				return "Livro adicionado.";
			}
		}
		livroLista[qtdLivro] = new Livro(titulo, qtd);
		qtdLivro++;
		return "Livro cadastrado.";
	}
	
	public String emprestarLivro (int ra, String livro) throws LivroNaoEncontradoException, UsuarioNaoEncontradoException{
		
		int exemplarLivro = 0;
		int posPessoa = 0;
		
		if(qtdLivro == 0)
			return "Cadastre um livro antes de utilizar essa opção.";
		
		if(qtdPessoa == 0)
			return "Cadastre um usuário antes de utilizar essa opção.";
		
		for(int i=0; i<qtdLivro; i++){
			if(livroLista[i].getTitulo().equals(livro)){
				if(livroLista[i].getQuantidade() == 0){
					return "Todos os exemplares já foram emprestados.";
				}
				exemplarLivro = i;
				break;
			}
			else if(i == qtdLivro-1){
				throw new LivroNaoEncontradoException("O livro não existe.");
			}
		}
		
		for(int j=0; j<qtdPessoa; j++){
			if(pessoaLista[j].getRa() == ra){
				if((pessoaLista[j].getTipo().equals(PessoaId.Aluno) && pessoaLista[j].getQtdEmprestimo() == 3) ||
				   ((pessoaLista[j].getTipo().equals(PessoaId.AlunoPos) || (pessoaLista[j].getTipo().equals(PessoaId.Professor))) 
					&& pessoaLista[j].getQtdEmprestimo() == 5))
				{
					return "Limite de empréstimo atingido.";
				}
				posPessoa = j;
				break;
			}
			else if(j == qtdPessoa-1){
				throw new UsuarioNaoEncontradoException("O usuário não existe.");
			}
		}
		
		livroLista[exemplarLivro].setQuantidade(livroLista[exemplarLivro].getQuantidade() - 1);
		pessoaLista[posPessoa].setQtdEmprestimo(pessoaLista[posPessoa].getQtdEmprestimo() + 1);
		
		cal.setTime(dataSystem);
		
		if(pessoaLista[posPessoa].getTipo().equals(PessoaId.Professor)){
			cal.add(Calendar.DATE, 10);
		}
		else{
			cal.add(Calendar.DATE, 7);
		}
        
		emprestimoLista[qtdEmprestimo] = new Emprestimo(pessoaLista[posPessoa].getNome(), livroLista[exemplarLivro].getTitulo(), cal.getTime(), false);
		qtdEmprestimo++;
		
		return "Livro emprestado.";
	}
	
	public String devolverLivro (String name, String livro) throws UsuarioNaoEncontradoException, LivroNaoEncontradoException{
		
		int exemplarLivro = 0;
		int posPessoa = 0;
		
		if(qtdLivro == 0)
			return "Cadastre um livro antes de utilizar essa opção.";
		
		if(qtdPessoa == 0)
			return "Cadastre um usuário antes de utilizar essa opção.";
		
		for(int i=0; i<qtdLivro; i++){
			if(livroLista[i].getTitulo().equals(livro)){
				exemplarLivro = i;
				break;
			}
			else if(i == qtdLivro-1){
				throw new LivroNaoEncontradoException("O livro não existe.");
			}
		}
		
		for(int j=0; j<qtdPessoa; j++){
			if(pessoaLista[j].getNome().equals(name)){
				posPessoa = j;
				break;
			}
			else if(j == qtdPessoa-1){
				throw new UsuarioNaoEncontradoException("Usuario não existe.");
			}
		}
		
		for(int i=0; i<qtdEmprestimo; i++){
			if(emprestimoLista[i].getTitulo().equals(livro) && emprestimoLista[i].getNome().equals(name) && emprestimoLista[i].getDevolvido() == false){
				livroLista[exemplarLivro].setQuantidade(livroLista[exemplarLivro].getQuantidade() + 1);
				pessoaLista[posPessoa].setQtdEmprestimo(pessoaLista[posPessoa].getQtdEmprestimo() - 1);
				emprestimoLista[i].setDevolvido(true);
				
				if(emprestimoLista[i].getDataEntrega().before(dataSystem)){
					return "Livro devolvido com atraso";
				}
				break;
			}
		}
		
		return "Livro devolvido.";
	}
	
	public String pesquisarAluno (String name, PessoaId tipo) throws UsuarioNaoEncontradoException{
		
		String resultado = "",titulo, user;
		int ra;
		Date data;
		
		if(qtdPessoa == 0)
			return "Cadastre um usuário antes de utilizar essa opção.";
		
		for(int i=0; i<qtdPessoa; i++){
			if(pessoaLista[i].getNome().equals(name) && pessoaLista[i].getTipo().equals(tipo)){
				
				user = pessoaLista[i].getNome();
				ra = pessoaLista[i].getRa();
				resultado = "Nome: " + user + "\nRA: " + ra;
				
				for(int j=0; j<qtdEmprestimo; j++)
				{
					if(emprestimoLista[j].getNome().equals(name) && emprestimoLista[j].getDevolvido() == false){
						titulo = emprestimoLista[j].getTitulo();
						data = emprestimoLista[j].getDataEntrega();
						resultado = resultado + "\nLivro: " + titulo + " | Data de devolução: " + data;
					}
				}
				break;
			}
			else if(i == qtdPessoa-1){
				throw new UsuarioNaoEncontradoException("Usuario não existe.");
			}
		}
		
		return resultado;
	}
		
	public String pesquisarLivro (String name) throws LivroNaoEncontradoException{
		
		String resultado = "",titulo;
		int quantidade;
		
		if(qtdLivro == 0)
			return "Cadastre um livro antes de utilizar essa opção.";		
		
		for(int i=0; i<qtdLivro; i++){
			if(livroLista[i].getTitulo().equals(name)){
				titulo = livroLista[i].getTitulo();
				quantidade = livroLista[i].getQuantidade();
				resultado = "Titulo: " + titulo + "\n" + "Quantidade: " + quantidade;
				break;
			}
			else if(i == qtdLivro-1){
				throw new LivroNaoEncontradoException("O livro não existe no sistema!");
			}
		}
		
		return resultado;
	}
	
		
	public String exibirAluno (PessoaId tipo){
		
		String resultado = "",nome;
		int ra;
		
		for(int i=0; i<qtdPessoa; i++){
			if(pessoaLista[i].getTipo().equals(tipo)){
				nome = pessoaLista[i].getNome();
				ra = pessoaLista[i].getRa();
				resultado = resultado + "\nNome: " + nome + "\nRA: " + ra + "\n";
			}
		}
		
		if(resultado.equals(""))
			return "Usuário não existe.";
		
		return resultado;
	}
	
	
	public String exibirLivro (){
		
		String resultado = "",titulo;
		int quantidade;
		
		for(int i=0; i<qtdLivro; i++){
			titulo = livroLista[i].getTitulo();
			quantidade = livroLista[i].getQuantidade();
			resultado = resultado + "\nTitulo: " + titulo + "\nQuantidade: " + quantidade + "\n";
		}
		
		if(resultado.equals(""))
			return "Livro não existe.";
		
		return resultado;
	}
	
	
	public String exibirAtraso (){
		
		String resultado = "",titulo, user;
		Date date;
		
		for(int i=0; i<qtdEmprestimo; i++){
			if(emprestimoLista[i].getDataEntrega().before(dataSystem) && emprestimoLista[i].getDevolvido() == false){
				titulo = emprestimoLista[i].getTitulo();
				user = emprestimoLista[i].getNome();
				date = emprestimoLista[i].getDataEntrega();
				resultado = resultado + "\nTitulo: " + titulo + "\nNome: " + user + "\nData de devolução esperada: " + date + "\n";
			}
		}
		
		if(resultado.equals(""))
			return "Sem atrasos.";
		
		return resultado;
	}
	
	public String inserirData(String data){
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH);
	    
		try {
			dataSystem = df.parse(data);
			System.out.println(dataSystem);
		} catch (ParseException e) {
			e.printStackTrace();
			return "Erro ao inserir data.";
		}  
		
		return "Data inserida.\n" + dataSystem;
	}
	
}
