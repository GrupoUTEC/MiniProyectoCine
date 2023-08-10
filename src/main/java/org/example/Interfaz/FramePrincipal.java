package org.example.Interfaz;
import javax.swing.*;
import java.awt.*;

public class FramePrincipal extends JFrame {

    Botones boton1 = new Botones();
    Label label1 = new Label();


    public FramePrincipal(){

        label1.setText("Cartelera");

        //Panel de la izquierda
        JPanel panel1 = new JPanel();
        panel1.setBackground(new Color(131, 140, 159));
        panel1.setPreferredSize(new Dimension(400,600));
        panel1.setLayout(new FlowLayout());
        panel1.add(boton1);
        panel1.add(label1);

        //Panel de la derecha
        JPanel panel2 = new JPanel();
        panel2.setBackground(new Color(94, 129, 169));
        panel2.setPreferredSize(new Dimension(400,600));


        this.setBounds(100,100,800,600);
        this.setTitle("Cine");
        this.setVisible(true);
        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setLocationRelativeTo(null);
        this.add(panel1,BorderLayout.WEST);
        this.add(panel2,BorderLayout.EAST);

    }

}
