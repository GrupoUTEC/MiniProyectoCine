package org.example.Interfaz;

import javax.swing.*;
import javax.swing.border.Border;
import java.awt.*;

public class FramePrincipal extends JFrame {

    /*************
     EN DESARROLLO
    **************/


    private static FramePrincipal frame = new FramePrincipal();

    Botones botonPelicula = new Botones();
    Botones botonSerie = new Botones();
    Botones botonPE = new Botones();
    Label label1 = new Label();


    public FramePrincipal(){

        label1.setText("Cartelera");
        label1.setFont((new Font("Chillax Medium", Font.CENTER_BASELINE, 30)));
        Border lineBorder = BorderFactory.createLineBorder(Color.GRAY, 7);


        //Panel Superior
        JPanel panel3 = new JPanel();
        panel3.setBackground(new Color(147, 142, 142));
        panel3.setBounds(0, 0, 400, 84);
        panel3.setBorder(lineBorder);
        panel3.add(label1);

        //Panel de la derecha
        JPanel panel2 = new JPanel();
        panel2.setBackground(new Color(94, 129, 169));
        panel2.setBounds(400, 76, 400, 523);

        //Panel de la izquierda
        JPanel panel1 = new JPanel();
        panel1.setBackground(new Color(131, 140, 159));
        panel1.setBounds(0, 76, 400, 523);
        panel1.setLayout(new FlowLayout());
        panel1.add(botonPelicula);
        panel2.add(botonSerie);
        panel3.add(botonPE);


        this.setBounds(0, 0, 800, 600);
        this.setTitle("Cine");
        this.setVisible(true);
        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setLocationRelativeTo(null);
        this.add(panel1);
        this.add(panel2);
        this.add(panel3);

    }

}
