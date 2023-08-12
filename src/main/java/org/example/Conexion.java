package org.example;
import java.sql.*;
public class Conexion {

    public static void main(String[] args) {

        PlataformaStreaming.getInstancia();

            try (
                Connection conn = DriverManager.getConnection(
                        "jdbc:oracle:thin:@localhost:1522/XEPDB1", "cineUser", "user")) {


            if (conn != null) {

                System.out.println("Conectado a la BD!");

                //PELICULAS
                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT id_pelicula, nombre, descripcion, duracion_horas, precio_horas FROM peliculas");

                //Print de Peliculas.
                while (resultSet.next()){
                    Pelicula pelicula1 =  new Pelicula
                            (resultSet.getInt("ID_PELICULA"),
                                    resultSet.getString("NOMBRE"),
                                    resultSet.getString("DESCRIPCION"),
                                    resultSet.getDouble("DURACION_HORAS"),
                                    resultSet.getInt("PRECIO_HORAS"));
                    PlataformaStreaming.agregarPelicula(pelicula1);
                    System.out.println(pelicula1);
                }

                //SERIES
                Statement statement2 =conn.createStatement();
                ResultSet resultSet1 = statement2.executeQuery("SELECT id_serie, nombre, descripcion, duracion_horas, precio_horas FROM series");

                //Print de Series.
                while (resultSet1.next()){
                    Serie serie1 = new Serie
                            (resultSet1.getInt("ID_SERIE"),
                                    resultSet1.getString("NOMBRE"),
                                    resultSet1.getString("DESCRIPCION"),
                                    resultSet1.getDouble("DURACION_HORAS"),
                                    resultSet1.getInt("PRECIO_HORAS"));
                    PlataformaStreaming.agregarSerie(serie1);
                    System.out.println(serie1);
                }

                //PE
                Statement statement3 = conn.createStatement();
                ResultSet resultSet2 = statement3.executeQuery("SELECT id_paquete, nombre, id_pelicula, id_serie from paqueteEspecial");

                //Print de Paquete Especial.
                while (resultSet2.next()){
                    PaqueteEspecial paqueteEspecial = new PaqueteEspecial
                            (resultSet2.getInt("ID_PAQUETE"),
                                    resultSet2.getString("NOMBRE"));

                    int id_P = resultSet2.getInt("ID_PELICULA");
                    int id_S = resultSet2.getInt("ID_SERIE");

                    //Logica para agregar pelicula a ArrayPeliculas
                    for (Pelicula a: PlataformaStreaming.getArrayPeliculas()) {
                        Pelicula encontreLaPeli;
                        if (a.idAudiovisual == id_P){
                            encontreLaPeli = a;
                            paqueteEspecial.setPelicula(encontreLaPeli);
                        }
                    }

                    //Logica para agregar serie a ArraySerie
                    for (Serie s: PlataformaStreaming.getArraySeries()) {
                        Serie encontreLaSerie;
                        if (s.idAudiovisual == id_S){
                            encontreLaSerie = s;
                            paqueteEspecial.setSerie(encontreLaSerie);
                        }
                    }

                    System.out.println(paqueteEspecial);
                }

                //Cerramos conexion.
                conn.close();

            } else {
                System.out.println("No se pudo conectar a la BD!");
            }

        } catch (
                SQLException e){
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e){
            e.printStackTrace();
        } finally{

        }

    }

}