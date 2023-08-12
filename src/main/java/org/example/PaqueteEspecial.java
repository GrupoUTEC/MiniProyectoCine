package org.example;
import org.example.Pelicula;
import org.example.Serie;

import java.util.ArrayList;

public class PaqueteEspecial {

    public int idPaquete;
    public String nombre;
    public Pelicula pelicula;
    public Serie serie;


    public PaqueteEspecial(int idPaquete, String nombre) {
        this.idPaquete = idPaquete;
        this.nombre = nombre;
    }

    public PaqueteEspecial(int idPaquete, String nombre, Pelicula pelicula, Serie serie) {
        this.idPaquete = idPaquete;
        this.nombre = nombre;
        this.pelicula = pelicula;
        this.serie = serie;
    }

    public int getIdPaquete() {
        return idPaquete;
    }

    public void setIdPaquete(int idPaquete) {
        this.idPaquete = idPaquete;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Pelicula getPelicula() {
        return pelicula;
    }

    public void setPelicula(Pelicula pelicula) {
        this.pelicula = pelicula;
    }

    public Serie getSerie() {
        return serie;
    }

    public void setSerie(Serie serie) {
        this.serie = serie;
    }

    @Override
    public String toString() {
        return "El paquete especial "+ nombre +"\" que posee las producciones: " + pelicula.nombre +" y "+ serie.nombre +
                ". Tiene un porcentaje de bonificación del 15%. " + "\n" +"Por lo que tiene un precio final de: " +((pelicula.precioHoras * pelicula.duracionHoras + (serie.precioHoras * serie.duracionHoras)) * 0.85);
    }
}
