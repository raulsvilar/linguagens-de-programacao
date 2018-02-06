package ui;

import javax.swing.*;
import alice.tuprolog.*;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.HashMap;

public class Velha implements  ActionListener{

    private JButton p1Button;
    private JButton p2Button;
    private JButton p3Button;
    private JButton p4Button;
    private JButton p5Button;
    private JButton p6Button;
    private JButton p7Button;
    private JButton p8Button;
    private JButton p9Button;
    private JPanel mainPanel;

    private String[] board = new String[9];
    private HashMap componentMap;
    private boolean canPlay = true;

    public Velha() {
        initComponents();
        for (int i=0; i<board.length;i++) {
            board[i] = "a";
        }
    }

    public void testeProlog(String actualBoard) throws Exception{
        Prolog engine = new Prolog();
        //File file = new File(Velha.class.getResource("tictactoe-game.pl").getFile());
        //FileInputStream fis = new FileInputStream(Velha.class.getResource("../tictactoe-game.pl").getPath());
        FileInputStream fis = new FileInputStream("tictactoe-game.pl");
        Theory theory = new Theory(fis);
        engine.setTheory (theory);
        //SolveInfo info = engine.solve("bestMove([o, play, "+actualBoard+"],[X,Y,Z]).");
        SolveInfo info = engine.solve("moveIA("+actualBoard+",Z).");
        if (!info.isSuccess()) {
            canPlay = false;
            JOptionPane.showMessageDialog(null, "Jogo empatado");
        } else {
            int newPos = Integer.parseInt(info.getTerm("Z").toString());
            board[newPos-1] = "o";
            System.out.println(Arrays.toString(board));
            for (int i = 0; i < board.length; i++) {
                if (board[i].equals("o")) {
                    JButton oButton = (JButton) getComponentByName(String.valueOf(i));
                    if (oButton.getText().equals("")) {
                        oButton.setText("O");
                    }
                }
            }
            info = engine.solve("vitoria("+Arrays.toString(board)+",o).");
            if (info.isSuccess()) {
                canPlay = false;
                JOptionPane.showMessageDialog(null, "Você perdeu o jogo");
            } else {
                int count = 0;
                for (int i=0; i<board.length;i++) {
                    if (board[i].equals("a")){
                        count++;
                    }
                }
                if (count == 0 || count == 1) {
                    canPlay = false;
                    JOptionPane.showMessageDialog(null, "Jogo empatado");
                }
            }
        }
    }

    private void initComponents() {
        p1Button.addActionListener(this);
        p1Button.setName("0");
        p1Button.setText("");
        p1Button.setActionCommand("0");

        p2Button.addActionListener(this);
        p2Button.setText("");
        p2Button.setName("1");
        p2Button.setActionCommand("1");

        p3Button.addActionListener(this);
        p3Button.setText("");
        p3Button.setName("2");
        p3Button.setActionCommand("2");

        p4Button.addActionListener(this);
        p4Button.setText("");
        p4Button.setName("3");
        p4Button.setActionCommand("3");

        p5Button.addActionListener(this);
        p5Button.setText("");
        p5Button.setName("4");
        p5Button.setActionCommand("4");

        p6Button.addActionListener(this);
        p6Button.setText("");
        p6Button.setName("5");
        p6Button.setActionCommand("5");

        p7Button.addActionListener(this);
        p7Button.setText("");
        p7Button.setName("6");
        p7Button.setActionCommand("6");

        p8Button.addActionListener(this);
        p8Button.setText("");
        p8Button.setName("7");
        p8Button.setActionCommand("7");

        p9Button.addActionListener(this);
        p9Button.setText("");
        p9Button.setName("8");
        p9Button.setActionCommand("8");
        createComponentMap();
    }

    private void createComponentMap() {
        componentMap = new HashMap<String,Component>();
        Component[] components = mainPanel.getComponents();
        for (int i=0; i < components.length; i++) {
            componentMap.put(components[i].getName(), components[i]);
        }
    }

    public Component getComponentByName(String name) {
        if (componentMap.containsKey(name)) {
            return (Component) componentMap.get(name);
        }
        else return null;
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        JButton button = (JButton) e.getSource();
        if (canPlay) {
            if (button.getText().equals("")) {
                button.setText("X");
                board[Integer.parseInt(button.getActionCommand())] = "x";
                try {
                    testeProlog(Arrays.toString(board));
                } catch (Exception e1) {
                    e1.printStackTrace();
                }
            }
        }
    }

    public static void main (String[] args) {
        JFrame frame = new JFrame("Velha");
        frame.setContentPane(new Velha().mainPanel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(400,400);
        frame.setResizable(false);
        frame.setVisible(true);
    }
}
