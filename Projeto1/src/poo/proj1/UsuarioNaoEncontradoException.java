package poo.proj1;

public class UsuarioNaoEncontradoException extends Exception {

	private static final long serialVersionUID = -2574578887458202008L;

	public UsuarioNaoEncontradoException(String mensagem) {
        super(mensagem);
    }
}
