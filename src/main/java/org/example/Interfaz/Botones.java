package org.example.Interfaz;

import javax.swing.*;
import java.awt.*;

public class Botones extends JButton {

    public Botones(){

        this.setFont(new Font("Chillax Medium", Font.CENTER_BASELINE, 15));
        this.setPreferredSize(new Dimension(85,30));
        this.setForeground(Color.WHITE);
        this.setVerticalAlignment(CENTER);
        this.setBorder(null);
        this.setFocusPainted(false);
        this.setBorder(BorderFactory.createEtchedBorder());
        this.setBackground(null);
        /*this.actionListener(t)*/
    }


}
