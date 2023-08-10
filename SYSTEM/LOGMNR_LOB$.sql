create table LOGMNR_LOB$
(
    OBJ#         NUMBER,
    INTCOL#      NUMBER,
    COL#         NUMBER,
    LOBJ#        NUMBER,
    CHUNK        NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_LOB$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1LOB$
    on LOGMNR_LOB$ (LOGMNR_UID, OBJ#, INTCOL#)
/

