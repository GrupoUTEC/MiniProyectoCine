create table CINEUSER.SERIES
(
    ID_SERIE       NUMBER not null
        primary key,
    NOMBRE         VARCHAR2(25),
    DESCRIPCION    VARCHAR2(600),
    DURACION_HORAS NUMBER,
    PRECIO_HORAS   NUMBER
)
/

