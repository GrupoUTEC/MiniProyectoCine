package org.example;

public class Serie extends AudioVisuales {


    public Serie(int idAudiovisual, String nombre, String descripcion, double duracionHoras, int precioHoras) {
        super(idAudiovisual, nombre, descripcion, duracionHoras, precioHoras);
    }

    @Override
    public String toString() {
        return "La serie \"" + nombre + "\"" + " tiene una duracion de " + duracionHoras + " horas" + " y un precio por horas de " + precioHoras + " por lo tanto su costo total es de: " + (precioHoras * duracionHoras) + "\n" +"*".repeat(130);

    }

}
