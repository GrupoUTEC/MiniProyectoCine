package org.example.Interfaz;

import javax.swing.*;
import java.awt.*;

public class Botones extends JButton {

    public Botones(){

        this.setPreferredSize(new Dimension(200,30));
        this.setForeground(Color.WHITE);
        this.setVerticalAlignment(CENTER);
        this.setText("Peliculas");
        this.setBorder(null);
        this.setFocusPainted(false);
        this.setBorder(BorderFactory.createEtchedBorder());
        this.setBackground(null);

    }

}
