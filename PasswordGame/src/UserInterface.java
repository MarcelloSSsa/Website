import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.JOptionPane;

public class UserInterface{

	private JFrame window;
	private JPanel board;
	private JToggleButton fields[];
	private JToggleButton password[];
	private JToggleButton asnwerFields[];
	
	private int indexBoard = 1;
	private int partialIndex = 1;
	//private int resultIndex = 1; //Should be used to manipulate the array of result buttons
	private boolean allowed;
	
	private final String tryOption = "Tentar!";
	private final String cleanOption = "Limpar"; 

	public UserInterface(){
		build();
	}
	
	private void colorFieldsChosen(){
		
		JButton[] colorFields = new JButton[6];
		
		colorFields[0] = new JButton();
		colorFields[0].setBackground(Color.red);
		colorFields[0].setPreferredSize(new Dimension(35,35));
		colorFields[0].addActionListener(new ColorEventListener());
		board.add(colorFields[0]);
		
		colorFields[1] = new JButton();
		colorFields[1].setBackground(Color.blue);
		colorFields[1].setPreferredSize(new Dimension(35,35));
		colorFields[1].addActionListener(new ColorEventListener());
		board.add(colorFields[1]);
		
		colorFields[2] = new JButton();
		colorFields[2].setBackground(Color.green);
		colorFields[2].setPreferredSize(new Dimension(35,35));
		colorFields[2].addActionListener(new ColorEventListener());
		board.add(colorFields[2]);
		
		colorFields[3] = new JButton();
		colorFields[3].setBackground(Color.yellow);
		colorFields[3].setPreferredSize(new Dimension(35,35));
		colorFields[3].addActionListener(new ColorEventListener());
		board.add(colorFields[3]);
		
		colorFields[4] = new JButton();
		colorFields[4].setBackground(Color.black);
		colorFields[4].setPreferredSize(new Dimension(35,35));
		colorFields[4].addActionListener(new ColorEventListener());
		board.add(colorFields[4]);
		
		colorFields[5] = new JButton();
		colorFields[5].setBackground(Color.gray);
		colorFields[5].setPreferredSize(new Dimension(35,35));
		colorFields[5].addActionListener(new ColorEventListener());
		board.add(colorFields[5]);
	}
	
	private void optionFieldsChosen(){
		
		JButton[] optionFields = new JButton[2];
		
		optionFields[0] = new JButton(tryOption);
		optionFields[0].addActionListener(new OptionEventListener());
		board.add(optionFields[0]);
		
		optionFields[1] = new JButton(cleanOption);
		optionFields[1].addActionListener(new OptionEventListener());
		board.add(optionFields[1]);
	}
	
	private void build(){
	
		password = new JToggleButton[5];
		fields = new JToggleButton[33];
		asnwerFields = new JToggleButton[32];
		board=new JPanel();
		int count=0;
		
		window = new JFrame("Jogo da senha");
		window.setSize(320,550);
		window.setLocation(400,50);
		window.setResizable(false);
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		for(int p=1; p<=4; p++){
			password[p]=new JToggleButton();
			password[p].setPreferredSize(new Dimension(40,40));
			password[p].setBackground(Color.white);
			password[p].setEnabled(false);
			board.add(password[p]);
		}
		
		JLabel passwordLabel = new JLabel(" Resultados");
		passwordLabel.setFont(new Font("Serif", Font.BOLD, 20));
		board.add(passwordLabel);

		for(int i=1;i<=32;i++){
			fields[i]=new JToggleButton();
			fields[i].setPreferredSize(new Dimension(40,40));
			fields[i].setBackground(Color.white);
			fields[i].setEnabled(false);
			board.add(fields[i]);
			if(i%4 == 0){
				for(int j=1; j<=4; j++)
				{
					asnwerFields[count]=new JToggleButton();
					asnwerFields[count].setPreferredSize(new Dimension(20,20));
					asnwerFields[count].setBackground(Color.white);
					asnwerFields[count].setEnabled(false);
					board.add(asnwerFields[count]);
					count++;
				}
			}
		}
		
		colorFieldsChosen();
		optionFieldsChosen();
		window.getContentPane().add(board);
		window.setVisible(true);
		allowed = true;
	}
	
	private void paint(Color color){
		
		if(allowed){
			fields[indexBoard].setBackground(color);
			if(partialIndex == 4)
				allowed = false;
			partialIndex++;
			indexBoard++;
		}

	}
	
	private void clean(){
		
		for(int i = partialIndex; i > 1; i--){
			indexBoard--;
			fields[indexBoard].setBackground(Color.white);
		}
		
		partialIndex = 1;
		allowed = true;
	}
	
	private void result(){
		partialIndex = 1;
		allowed = true;
	}
	
	class ColorEventListener extends WindowAdapter implements ActionListener {
		
		public void actionPerformed(ActionEvent e) {
			if(e.getSource() instanceof JButton){
				JButton button = (JButton)e.getSource();
				
				if(button.getBackground() == Color.red){
					paint(Color.red);
				}else if(button.getBackground() == Color.blue){
					paint(Color.blue);
				}else if(button.getBackground() == Color.green){
					paint(Color.green);
				}else if(button.getBackground() == Color.yellow){
					paint(Color.yellow);
				}else if(button.getBackground() == Color.black){
					paint(Color.black);
				}else if(button.getBackground() == Color.gray){
					paint(Color.gray);
				}
			}		
		}
	}
	
	class OptionEventListener extends WindowAdapter implements ActionListener {
		public void actionPerformed(ActionEvent e){
			if(e.getSource() instanceof JButton){
				JButton button = (JButton)e.getSource();
				
				if(button.getText().equals(tryOption)){
					if(allowed){
						JOptionPane.showMessageDialog(null, "Para tentar é necessário preencher toda a senha!", "Jogada inválida", JOptionPane.ERROR_MESSAGE);
					}
					else{	
						result();
					}
				}else if(button.getText().equals(cleanOption)){
					clean();
				}
			}
		}
	}
			
	
}