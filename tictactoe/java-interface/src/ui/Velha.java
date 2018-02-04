package ui;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

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

    public Velha() {
        initComponents();
    }

    private void initComponents() {
        p1Button.addActionListener(this);
        p1Button.setText("");
        p2Button.addActionListener(this);
        p2Button.setText("");
        p3Button.addActionListener(this);
        p3Button.setText("");
        p4Button.addActionListener(this);
        p4Button.setText("");
        p5Button.addActionListener(this);
        p5Button.setText("");
        p6Button.addActionListener(this);
        p6Button.setText("");
        p7Button.addActionListener(this);
        p7Button.setText("");
        p8Button.addActionListener(this);
        p8Button.setText("");
        p9Button.addActionListener(this);
        p9Button.setText("");
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        JButton button = (JButton) e.getSource();
        if (button.getText().equals("")){
            button.setText("X");
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
