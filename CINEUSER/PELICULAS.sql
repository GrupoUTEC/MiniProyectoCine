create table CINEUSER.PELICULAS
(
    ID_PELICULA    NUMBER not null
        primary key,
    NOMBRE         VARCHAR2(25),
    DESCRIPCION    VARCHAR2(600),
    DURACION_HORAS NUMBER,
    PRECIO_HORAS   NUMBER
)
/

