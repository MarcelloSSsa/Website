package poo.proj1;

public class LivroNaoEncontradoException extends Exception {

	private static final long serialVersionUID = -6418467704346845941L;

	public LivroNaoEncontradoException(String mensagem) {
        super(mensagem);
    }
}
