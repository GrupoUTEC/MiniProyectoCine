package org.example;

public class Serie {

    public int idSerie;
    public String nombre;
    public String descripcion;
    public double duracionHoras;
    public int precioHoras;

    public Serie(int idSerie, String nombre, String descripcion, double duracionHoras, int precioHoras) {
        this.idSerie = idSerie;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.duracionHoras = duracionHoras;
        this.precioHoras = precioHoras;
    }

    @Override
    public String toString() {
        return "Serie{" +
                "idSerie=" + idSerie +
                ", nombre='" + nombre + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", duracionHoras=" + duracionHoras +
                ", precioHoras=" + precioHoras +
                '}';
    }
}
