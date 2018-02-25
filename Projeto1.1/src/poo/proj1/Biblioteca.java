package poo.proj1;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Scanner;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.Date;

public class Biblioteca {

	String nome;
	String ra;
	String titulo;
	int quantidade;
	private int op;
	private int qtdAlunos = 0;
	private int qtdLivros = 0;
	Date dataSystem;
	Date dataDev;

	ArrayList<Aluno> alunoLista = new ArrayList<Aluno>();
	ArrayList<Livro> livroLista = new ArrayList<Livro>();
	ArrayList<Emprestimo> emprestimoLista = new ArrayList<Emprestimo>();

	public void menu() throws ParseException {
		do {
			Scanner input = new Scanner(System.in);
			System.out.println("0: Inserir data.");
			System.out.println("1: Cadastrar Aluno.");
			System.out.println("2: Cadastrar Livro.");
			System.out.println("3: Emprestar Livro.");
			System.out.println("4: Devolver Livro.");
			System.out.println("5: Consultar usuario.");
			System.out.println("6: Consultar livro.");
			System.out.println("7: Consultar devoluções em atraso.");
			System.out.println("8: Lista de alunos cadastrados.");
			System.out.println("9: Lista de livros cadastrados.");
			System.out.println("10: Sair.");
			System.out.print("->");
			op = input.nextInt();
			
			if (op == 0)
				dataSystem = inserirData();
			else if (op == 1)
				cadAluno();
			else if (op == 2)
				cadLivro();
			else if (op == 3)
				emprestarLivro();
			else if (op == 4)
				devolverLivro();
			else if (op == 5)
				pesquisarAluno();
			else if (op == 6)
				pesquisarLivro();
			else if (op == 7)
				consultaAtraso();
			else if (op == 8)
				listarAluno();
			else if (op == 9)
				listarLivro();
			else if (op == 10)
				System.exit(0);
			else if (op < 0 || op > 10)
				System.out.println("Opção Invalida.");
		} while (op != 10);
	}

	private Date inserirData() throws ParseException {
		Scanner input = new Scanner(System.in);
		String dataSys;
		System.out.println("Digite uma data no formato: dd/MM/yyyy");
		dataSys = input.nextLine();
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
	    Date result =  df.parse(dataSys);  
	    System.out.println(result);
		return(result);
	}

	public void cadAluno() {
		Aluno aluno = new Aluno(nome, nome);
		Scanner input1 = new Scanner(System.in);
		System.out.println("Digite o nome do aluno: ");
		nome = input1.nextLine();
		System.out.println("Digite o RA do aluno: ");
		ra = input1.nextLine();

		if (alunoLista.size() > 0) {
			for (int i = 0; i < alunoLista.size(); i++) {
				if (alunoLista.get(i).getRa().equals(ra)) {
					System.out
							.println("Este RA já está associado a outro aluno,tente novamente.");
					return;
				} else {
					aluno.setNome(nome);
					aluno.setRa(ra);
					aluno.setQtdEmprestimo(0);
					alunoLista.add(aluno);
					qtdAlunos++;
					System.out.println("Cadastro concluido");
					return;
				}
			}
		} else {
			aluno.setNome(nome);
			aluno.setRa(ra);
			aluno.setQtdEmprestimo(0);
			alunoLista.add(aluno);
			qtdAlunos++;
			System.out.println("Cadastro concluido");
		}
	}

	public void cadLivro() {
		Livro livro = new Livro();
		int totalLivro = 0;
		Scanner input2 = new Scanner(System.in);
		System.out.println("Digite o titulo do livro: ");
		titulo = input2.nextLine();
		System.out.println("Digite a quantidade do livro: ");
		quantidade = input2.nextInt();
		
		if (livroLista.size() > 0) {
			for (int i = 0; i < livroLista.size(); i++) {
				if (livroLista.get(i).getTitulo().equals(titulo)) {
					totalLivro = livroLista.get(i).getQuantidade();
					livroLista.get(i).setQuantidade(totalLivro + quantidade);
					totalLivro = livroLista.get(i).getQuantidadeEmprestimo();
					livroLista.get(i).setQuantidadeEmprestimo(totalLivro + quantidade);
					return;
				}
				else{
					livro.setTitulo(titulo);
					livro.setQuantidade(quantidade);
					livro.setQuantidadeEmprestimo(quantidade);
					qtdLivros++;
					livroLista.add(livro);
					return;
				}
			}
		}

		livro.setTitulo(titulo);
		livro.setQuantidade(quantidade);
		livro.setQuantidadeEmprestimo(quantidade);
		qtdLivros++;
		livroLista.add(livro);
	}

	public void pesquisarAluno() {

		Scanner input3 = new Scanner(System.in);
		System.out.println("Digite o nome do aluno a ser pesquisado: ");
		String nomePesquisa = input3.nextLine();
		int qtd = 0;

		for (int i = 0; i < alunoLista.size(); i++) {
			if (alunoLista.get(i).getNome().equals(nomePesquisa)) {
				System.out.println("Aluno encontrado:");
				System.out.println("Nome: " + alunoLista.get(i).getNome());
				System.out.println("RA: " + alunoLista.get(i).getRa());
				System.out.println();
				System.out.println("Livros emprestados ao aluno:");
				for (int j = 0; j < emprestimoLista.size(); j++) {
					if (emprestimoLista.get(i).getNomeAluno().equals(nomePesquisa)){
						System.out.println("Titulo: "+emprestimoLista.get(i).getTituloLivro());
						System.out.println("Data de devolução: "+emprestimoLista.get(i).getDataDevolução());
					}
				}
				
				qtd++;
			} else if ((i == alunoLista.size() - 1) && (qtdAlunos == 0)) {
				System.out.println("Aluno não encontrado.");
			}
		}
	}

	private void emprestarLivro() {
		Scanner input8 = new Scanner(System.in);
		Calendar c = Calendar.getInstance();
		Emprestimo emprestimo = new Emprestimo();
		System.out.println("Digite o nome do aluno: ");
		String nomePesquisa = input8.nextLine();
		int qtd = 0;
		int b = 0;
		
		for (int i = 0; i < alunoLista.size(); i++) {
			if (alunoLista.get(i).getNome().equals(nomePesquisa)) {
				if (alunoLista.get(i).getQtdEmprestimo() >= 3){
					System.out.println("Cada aluno só pode ter 3 empréstimos.");
					return;
				}
				emprestimo.setNomeAluno(nomePesquisa);
				b++;
				alunoLista.get(i).setQtdEmprestimo(alunoLista.get(i).getQtdEmprestimo() + 1);
			}
		}
		if ((alunoLista.size() == 0) || b == 0){
			System.out.println("Aluno não existe!");
			return;
		}
		
		System.out.println("Digite o titulo do livro: ");
		String tituloPesquisa = input8.nextLine();

		for (int i = 0; i < livroLista.size(); i++) {
			if (livroLista.get(i).getTitulo().equals(tituloPesquisa)) {
				if (livroLista.get(i).getQuantidade() > 0) {
					emprestimo.setTituloLivro(tituloPesquisa);
					System.out.println("Livro encontrado:");
					System.out.println("Quantidade disponível: "
							+ livroLista.get(i).getQuantidadeEmprestimo());
					System.out.println("Empréstimo de 1 unidade.");
					int total = livroLista.get(i).getQuantidade() - 1;
					livroLista.get(i).setQuantidadeEmprestimo(total);
					emprestimo.setDataEmprestimo(dataSystem);
					c.setTime(dataSystem);
					c.set(Calendar.DAY_OF_MONTH,c.get(Calendar.DAY_OF_MONTH)+7);
					dataDev = c.getTime();
					emprestimo.setDataDevolução(dataDev);
					System.out.println("Data de empréstimo: "+dataSystem);
					System.out.println("Data de devolução: "+dataDev);
					emprestimoLista.add(emprestimo);
					qtd++;
				}
				else
					System.out.println("Não há mais exemplares disponíveis.");
			} else if ((i == alunoLista.size() - 1) && (qtd == 0)) {
				System.out.println("Livro não encontrado.");
				alunoLista.get(i).setQtdEmprestimo(alunoLista.get(i).getQtdEmprestimo() - 1);
			}
		}
	}

	private void devolverLivro() {
		String nomeDev;
		String tituloDev;
		Scanner input = new Scanner(System.in);
		System.out.println("Digite o nome do aluno");
		nomeDev = input.nextLine();
		System.out.println("Digite o titulo do livro");
		tituloDev = input.nextLine();
		for (int i = 0; i < emprestimoLista.size(); i++) {
			if (emprestimoLista.get(i).getNomeAluno().equals(nomeDev) && emprestimoLista.get(i).getTituloLivro().equals(tituloDev)) {
				for (int j = 0; j < alunoLista.size(); j++){
					if(alunoLista.get(i).getNome().equals(nomeDev)){
						alunoLista.get(i).setQtdEmprestimo(alunoLista.get(i).getQtdEmprestimo() - 1);
					}
				}
				if (emprestimoLista.get(i).getDataDevolução().before(dataSystem)){
					System.out.println("Livro devolvido com atraso!");
				}
				emprestimoLista.remove(i);
				System.out.println("Livro devolvido.");
			}
		}
		for (int i = 0; i < livroLista.size(); i++) {
			if (livroLista.get(i).getTitulo().equals(tituloDev)) {
				int total = 0;
				total = livroLista.get(i).getQuantidadeEmprestimo();
				livroLista.get(i).setQuantidadeEmprestimo(total + 1);
			}	
		}
	}

	private void pesquisarLivro() {
		Scanner input4 = new Scanner(System.in);

		System.out.println("Digite o titulo do livro a ser pesquisado: ");
		String tituloPesquisa = input4.nextLine();
		int qtd = 0;

		for (int i = 0; i < livroLista.size(); i++) {
			if (livroLista.get(i).getTitulo().equals(tituloPesquisa)) {
				System.out.println("Livro encontrado:");
				System.out.println("Titulo: " + livroLista.get(i).getTitulo());
				System.out.println("Quantidade: "
						+ livroLista.get(i).getQuantidadeEmprestimo());
				qtd++;
			} else if ((i == livroLista.size() - 1) && (qtdLivros == 0)) {
				System.out.println("Livro não encontrado.");
			}
		}
		System.out.println("Foram encontradras " + qtd + " entradas.");

	}

	private void consultaAtraso() {
		int atraso = 0;
		for (int i = 0; i < emprestimoLista.size(); i++) {
			if (emprestimoLista.get(i).getDataDevolução().before(dataSystem)){
				atraso++;
				System.out.println(emprestimoLista.get(i).getNomeAluno());
				System.out.println(emprestimoLista.get(i).getTituloLivro());
				System.out.println(emprestimoLista.get(i).getDataDevolução());
				System.out.println();
			}
			if ((i == emprestimoLista.size() - 1) && (atraso == 0)){
				System.out.println("Não existem entregas pendentes.");
			}
		}

	}

	private void listarAluno() {
		System.out.println("=================================================");
		System.out.println("Alunos cadastrados no sistema:");
		for (int i = 0; i < alunoLista.size(); i++) {
			System.out.println("Nome: " + alunoLista.get(i).getNome());
			System.out.println("RA: " + alunoLista.get(i).getRa());
		}
		System.out.println("Fim da Listagem.");
		System.out.println("=================================================");
	}

	private void listarLivro() {
		System.out.println("=================================================");
		System.out.println("Livros cadastrados no sistema:");
		for (int i = 0; i < livroLista.size(); i++) {
			System.out.println("Titulo: " + livroLista.get(i).getTitulo());
			System.out.println("Quantidade: "
					+ livroLista.get(i).getQuantidade());
		}
		System.out.println("Fim da Listagem.");
		System.out.println("=================================================");
	}
}
