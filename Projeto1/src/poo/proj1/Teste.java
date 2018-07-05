package poo.proj1;
import javax.swing.JOptionPane;

public class Teste {
	public static void main (String argc[]) throws LivroNaoEncontradoException, UsuarioNaoEncontradoException{
		
		final String menu = "\nBiblioteca JAVA P.O.O.\n\nOp��o: 0 - Inserir data do sistema\nOp��o: 1 - Cadastrar aluno\nOp��o: 2 - Cadastrar livro\nOp��o: 3 - Emprestar livro\nOp��o: 4 - Devolver livro\nOp��o: 5 - Consultar livro\nOp��o: 6 - Consultar aluno\nOp��o: 7 - Verificar atraso\nOp��o: 8 - Listar todos os livros\nOp��o: 9 - Listar todos os alunos\nOp��o: 10 - Cadastrar professor\nOp��o: 11 - Cadastrar aluno de p�s gradua��o\nOp��o: 12 - Listar professores\nOp��o: 13 - listar todos os alunos pos gradua��o\nOp��o: 14 - Consultar professor\nOp��o: 15 - Consultar aluno de pos gradua��o\nOp��o: -1 - Sair\n\n\n Op��o: ";
		String data, opcao, nome, ra, titulo, quantidade;
		int op = 0, cod, qtd;
		boolean exibindo;
		
		Biblioteca biblioteca = new Biblioteca();
		
		while(op != -1)
		{
			opcao = JOptionPane.showInputDialog(null, menu, "Menu",  JOptionPane.QUESTION_MESSAGE);
			
			try {
				op = Integer.parseInt(opcao);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				JOptionPane.showMessageDialog(null, "Formato inv�lido\n", "Menu", JOptionPane.ERROR_MESSAGE);
				op = 99;
			}  
			
			switch(op)
			{
				case 0:
					data = JOptionPane.showInputDialog(null, "Informe uma data no Formato: dd/MM/yyyy\n", "Data do sistema",  JOptionPane.QUESTION_MESSAGE);
					JOptionPane.showMessageDialog(null, biblioteca.inserirData(data), "Data do sistema", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 1:
					nome = JOptionPane.showInputDialog(null, "Nome:", "Cadastro de usuario",  JOptionPane.QUESTION_MESSAGE);
					ra = JOptionPane.showInputDialog(null, "RA:", "Cadastro de usuario",  JOptionPane.QUESTION_MESSAGE);
					
					try {
						cod = Integer.parseInt(ra);
						JOptionPane.showMessageDialog(null, biblioteca.cadastro(nome, cod, PessoaId.Aluno), "Cadastro de usuario", JOptionPane.INFORMATION_MESSAGE);
					} catch (NumberFormatException e) {
						e.printStackTrace();
						JOptionPane.showMessageDialog(null, "Formato inv�lido.", "Cadastro de usuario", JOptionPane.ERROR_MESSAGE);
					}  
					break;
				case 2:
					titulo = JOptionPane.showInputDialog(null, "T�tulo:", "Cadastro de livro",  JOptionPane.QUESTION_MESSAGE);
					quantidade = JOptionPane.showInputDialog(null, "Quantidade:", "Cadastro de livro",  JOptionPane.QUESTION_MESSAGE);
					
					try {
						qtd = Integer.parseInt(quantidade);
						JOptionPane.showMessageDialog(null, biblioteca.cadLivro(titulo, qtd), "Cadastro de livro", JOptionPane.INFORMATION_MESSAGE);
					} catch (NumberFormatException e) {
						e.printStackTrace();
						JOptionPane.showMessageDialog(null, "Formato inv�lido.", "Cadastro de livro", JOptionPane.ERROR_MESSAGE);
					}
					break;
				case 3:
					exibindo = true;
					do{
						titulo = JOptionPane.showInputDialog(null, "T�tulo:", "Emprestar Livro",  JOptionPane.QUESTION_MESSAGE);
						ra = JOptionPane.showInputDialog(null, "RA:", "Emprestar Livro",  JOptionPane.QUESTION_MESSAGE);
						
						try {
							cod = Integer.parseInt(ra);
							JOptionPane.showMessageDialog(null, biblioteca.emprestarLivro(cod,titulo), "Emprestar Livro", JOptionPane.INFORMATION_MESSAGE);
							exibindo = false;
						} catch (NumberFormatException e) {
							e.printStackTrace();
							JOptionPane.showMessageDialog(null, "Formato inv�lido.\n ", "Emprestar Livro", JOptionPane.ERROR_MESSAGE);
						} catch (LivroNaoEncontradoException e) {
							e.printStackTrace();
							JOptionPane.showMessageDialog(null, e.getMessage() + "\n ", "Emprestar Livro", JOptionPane.ERROR_MESSAGE);
						} catch (UsuarioNaoEncontradoException e) {
							e.printStackTrace();
							JOptionPane.showMessageDialog(null, e.getMessage() + "\n ", "Emprestar Livro", JOptionPane.ERROR_MESSAGE);
						}
					}while(exibindo);
					break;
				case 4:
					exibindo = true;
					do{
						titulo = JOptionPane.showInputDialog(null, "T�tulo:", "Devolver livro",  JOptionPane.QUESTION_MESSAGE);
						nome = JOptionPane.showInputDialog(null, "Nome:", "Devolver livro",  JOptionPane.QUESTION_MESSAGE);
						
						try {
							JOptionPane.showMessageDialog(null, biblioteca.devolverLivro(nome,titulo), "Devolver livro", JOptionPane.INFORMATION_MESSAGE);
							exibindo = false;
						} catch (LivroNaoEncontradoException e) {
							e.printStackTrace();
							JOptionPane.showMessageDialog(null, e.getMessage() + "\n ", "Devolver livro", JOptionPane.ERROR_MESSAGE);
						} catch (UsuarioNaoEncontradoException e) {
							e.printStackTrace();
							JOptionPane.showMessageDialog(null, e.getMessage() + "\n ", "Devolver livro", JOptionPane.ERROR_MESSAGE);
						}
					}while(exibindo);
					break;
				case 5:
					exibindo = true;
					do{
						titulo = JOptionPane.showInputDialog(null, "T�tulo:", "Buscar livro",  JOptionPane.QUESTION_MESSAGE);
						
						try {
							JOptionPane.showMessageDialog(null, biblioteca.pesquisarLivro(titulo), "Buscar livro", JOptionPane.INFORMATION_MESSAGE);
							exibindo = false;
						} catch (LivroNaoEncontradoException e) {
							e.printStackTrace();
							JOptionPane.showMessageDialog(null, e.getMessage() + "\n ", "Buscar livro", JOptionPane.ERROR_MESSAGE);
						} 
					}while(exibindo);
					break;
				case 6:
					exibindo = true;
					do{
						nome = JOptionPane.showInputDialog(null, "Nome:", "Buscar aluno",  JOptionPane.QUESTION_MESSAGE);
						
						try {
							JOptionPane.showMessageDialog(null, biblioteca.pesquisarAluno(nome, PessoaId.Aluno), "Buscar aluno", JOptionPane.INFORMATION_MESSAGE);
							exibindo = false;
						} catch (UsuarioNaoEncontradoException e) {
							e.printStackTrace();
							JOptionPane.showMessageDialog(null, e.getMessage() + "\n ", "Buscar aluno", JOptionPane.ERROR_MESSAGE);
						}
					}while(exibindo);
					break;
				case 7:
					JOptionPane.showMessageDialog(null, biblioteca.exibirAtraso(), "Devolu��o em atraso", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 8:
					JOptionPane.showMessageDialog(null, biblioteca.exibirLivro(), "Livros do sistema", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 9:
					JOptionPane.showMessageDialog(null, biblioteca.exibirAluno(PessoaId.Aluno), "Alunos do sistema", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 10:
					nome = JOptionPane.showInputDialog(null, "Nome:", "Cadastro de professor",  JOptionPane.QUESTION_MESSAGE);
					ra = JOptionPane.showInputDialog(null, "RA:", "Cadastro de professor",  JOptionPane.QUESTION_MESSAGE);
					
					try {
						cod = Integer.parseInt(ra);
						JOptionPane.showMessageDialog(null, biblioteca.cadastro(nome, cod, PessoaId.Professor), "Cadastro de professor", JOptionPane.INFORMATION_MESSAGE);
					} catch (NumberFormatException e) {
						e.printStackTrace();
						JOptionPane.showMessageDialog(null, "Formato inv�lido.", "Cadastro de professor", JOptionPane.ERROR_MESSAGE);
					}  
					break;
				case 11:
					nome = JOptionPane.showInputDialog(null, "Nome:", "Cadastro de aluno de pos gradua��o",  JOptionPane.QUESTION_MESSAGE);
					ra = JOptionPane.showInputDialog(null, "RA:", "Cadastro de aluno de pos gradua��o",  JOptionPane.QUESTION_MESSAGE);
					
					try {
						cod = Integer.parseInt(ra);
						JOptionPane.showMessageDialog(null, biblioteca.cadastro(nome, cod, PessoaId.AlunoPos), "Cadastro de aluno de pos gradua��o", JOptionPane.INFORMATION_MESSAGE);
					} catch (NumberFormatException e) {
						e.printStackTrace();
						JOptionPane.showMessageDialog(null, "Formato inv�lido.", "Cadastro de aluno de pos gradua��o", JOptionPane.ERROR_MESSAGE);
					}  
					break;
				case 12:
					JOptionPane.showMessageDialog(null, biblioteca.exibirAluno(PessoaId.Professor), "Professores do sistema", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 13:
					JOptionPane.showMessageDialog(null, biblioteca.exibirAluno(PessoaId.AlunoPos), "Alunos de p�s gradua��o do sistema", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 14:
					exibindo = true;
					do{
						nome = JOptionPane.showInputDialog(null, "Nome:", "Buscar professor",  JOptionPane.QUESTION_MESSAGE);
						
						try {
							JOptionPane.showMessageDialog(null, biblioteca.pesquisarAluno(nome, PessoaId.Professor), "Buscar professor", JOptionPane.INFORMATION_MESSAGE);
							exibindo = false;
						} catch (UsuarioNaoEncontradoException e) {
							e.printStackTrace();
							JOptionPane.showMessageDialog(null, e.getMessage() + "\n ", "Buscar professor", JOptionPane.ERROR_MESSAGE);
						} 
					}while(exibindo);
					break;
				case 15:
					exibindo = true;
					do{
						nome = JOptionPane.showInputDialog(null, "Nome:", "Buscar aluno de p�s gradua��o",  JOptionPane.QUESTION_MESSAGE);
						
						try {
							JOptionPane.showMessageDialog(null, biblioteca.pesquisarAluno(nome, PessoaId.AlunoPos), "Buscar aluno de p�s gradua��o", JOptionPane.INFORMATION_MESSAGE);
							exibindo = false;
						} catch (UsuarioNaoEncontradoException e) {
							e.printStackTrace();
							JOptionPane.showMessageDialog(null, e.getMessage() + "\n ", "Buscar aluno de p�s gradua��o", JOptionPane.ERROR_MESSAGE);
						}
					}while(exibindo);
					break;
				case 99:
					break;
				case -1:
					break;
				default:
					JOptionPane.showMessageDialog(null, "Op��o Inv�lida.\n ", "Op��es do menu", JOptionPane.ERROR_MESSAGE);
			}
			
			
		}
		
	}
}
