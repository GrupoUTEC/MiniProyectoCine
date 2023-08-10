create table LOGMNR_ENC$
(
    OBJ#         NUMBER,
    OWNER#       NUMBER,
    ENCALG       NUMBER,
    INTALG       NUMBER,
    COLKLC       RAW(2000),
    KLCLEN       NUMBER,
    FLAG         NUMBER,
    MKEYID       VARCHAR2(192) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_ENC$_PK
        primary key (LOGMNR_UID, OBJ#, OWNER#)
)
/

create index LOGMNR_I1ENC$
    on LOGMNR_ENC$ (LOGMNR_UID, OBJ#, OWNER#)
/

