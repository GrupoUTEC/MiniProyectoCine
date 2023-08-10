package org.example;

import java.sql.*;

public class ConexionOracle {

    public static void main(String[] args) {

        //Vamos a establecer una conexion a la BD identificada por su url y ademas indicamos usuario y clave
        try (Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1522/XEPDB1", "cineUser", "user")) {


            if (conn != null) {
                System.out.println("Conectado a la BD!");


                //Obtenemos los nombres de las personas
                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT id_pelicula, nombre, descripcion, duracion_horas, precio_horas FROM peliculas");

                if (resultSet.next()){
                    Pelicula pelicula1 =  new Pelicula
                            (resultSet.getInt("ID_PELICULA"),
                            resultSet.getString("NOMBRE"),
                            resultSet.getString("DESCRIPCION"),
                            resultSet.getDouble("DURACION_HORAS"),
                            resultSet.getInt("PRECIO_HORAS"));
                    System.out.println(pelicula1);
                }
                conn.close();

            } else {
                System.out.println("No se pudo conectar a la BD!");
            }


        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        } finally{

        }

    }
}
