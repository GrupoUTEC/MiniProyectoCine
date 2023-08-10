create table LOGMNR_COLTYPE$
(
    COL#         NUMBER,
    INTCOL#      NUMBER,
    TOID         RAW(16),
    VERSION#     NUMBER,
    PACKED       NUMBER,
    INTCOLS      NUMBER,
    INTCOL#S     RAW(2000),
    FLAGS        NUMBER,
    TYPIDCOL#    NUMBER,
    SYNOBJ#      NUMBER,
    OBJ#         NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_COLTYPE$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1COLTYPE$
    on LOGMNR_COLTYPE$ (LOGMNR_UID, OBJ#, INTCOL#)
/

