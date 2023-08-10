create table LOGMNR_NTAB$
(
    COL#         NUMBER,
    INTCOL#      NUMBER,
    NTAB#        NUMBER,
    NAME         VARCHAR2(4000),
    OBJ#         NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_NTAB$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1NTAB$
    on LOGMNR_NTAB$ (LOGMNR_UID, OBJ#, INTCOL#)
/

create index LOGMNR_I2NTAB$
    on LOGMNR_NTAB$ (LOGMNR_UID, NTAB#)
/

