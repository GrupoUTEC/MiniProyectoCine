package org.example;

import org.example.Pelicula;

public class AudioVisuales {

    public int idAudiovisual;
    public String nombre;
    public String descripcion;
    public double duracionHoras;
    public int precioHoras;

    public AudioVisuales(int idAudiovisual, String nombre, String descripcion, double duracionHoras, int precioHoras) {
        this.idAudiovisual = idAudiovisual;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.duracionHoras = duracionHoras;
        this.precioHoras = precioHoras;
    }

}
