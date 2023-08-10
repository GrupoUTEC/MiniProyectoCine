package org.example;

public class Pelicula {

    public int idPelicula;
    public String nombre;
    public String descripcion;
    public double duracionHoras;
    public int precioHoras;

    public Pelicula(int idPelicula, String nombre, String descripcion, double duracionHoras, int precioHoras) {
        this.idPelicula = idPelicula;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.duracionHoras = duracionHoras;
        this.precioHoras = precioHoras;
    }


    @Override
    public String toString() {
        return "La pelicula \"" + nombre + "\"" + " tiene una duracion de " + duracionHoras + " horas" + " y un precio por horas de " + precioHoras + " por lo tanto su costo total es de: " + (precioHoras * duracionHoras) + " su descripcion ";
    }
}
