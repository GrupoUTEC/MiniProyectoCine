package org.example;

public class Pelicula extends AudioVisuales {

    public Pelicula(int idAudiovisual, String nombre, String descripcion, double duracionHoras, int precioHoras) {
        super(idAudiovisual, nombre, descripcion, duracionHoras, precioHoras);
    }



    @Override
    public String toString() {
        return "La pelicula \"" + nombre + "\"" + " tiene una duracion de " + duracionHoras + " horas" + " y un precio por horas de " + precioHoras + " por lo tanto su costo total es de: " + (precioHoras * duracionHoras) + "\n" +"*".repeat(133);
    }


}
