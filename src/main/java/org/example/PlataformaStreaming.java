package org.example;

import java.util.ArrayList;

public class PlataformaStreaming {

    private static PlataformaStreaming instancia;
    private static ArrayList<Pelicula> arrayPeliculas;
    private static ArrayList<Serie> arraySeries;

    private PlataformaStreaming() {
        arraySeries = new ArrayList<>();
        arrayPeliculas = new ArrayList<>();
    }
    public static synchronized PlataformaStreaming getInstancia() {
        if (instancia == null) {
            instancia = new PlataformaStreaming();
        }
        return instancia;
    }

    public static void agregarPelicula(Pelicula pelicula){
        arrayPeliculas.add(pelicula);
    }

    public static void agregarSerie(Serie serie){
        arraySeries.add(serie);
    }

    public static void setInstancia(PlataformaStreaming instancia) {
        PlataformaStreaming.instancia = instancia;
    }

    public static ArrayList<Pelicula> getArrayPeliculas() {
        return arrayPeliculas;
    }

    public static void setArrayPeliculas(ArrayList<Pelicula> arrayPeliculas) {
        PlataformaStreaming.arrayPeliculas = arrayPeliculas;
    }

    public static ArrayList<Serie> getArraySeries() {
        return arraySeries;
    }

    public static void setArraySeries(ArrayList<Serie> arraySeries) {
        PlataformaStreaming.arraySeries = arraySeries;
    }
}
