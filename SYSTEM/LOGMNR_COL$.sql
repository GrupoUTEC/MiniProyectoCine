create table LOGMNR_COL$
(
    COL#         NUMBER(22),
    SEGCOL#      NUMBER(22),
    NAME         VARCHAR2(384),
    TYPE#        NUMBER(22),
    LENGTH       NUMBER(22),
    PRECISION#   NUMBER(22),
    SCALE        NUMBER(22),
    NULL$        NUMBER(22),
    INTCOL#      NUMBER(22),
    PROPERTY     NUMBER,
    CHARSETID    NUMBER(22),
    CHARSETFORM  NUMBER(22),
    SPARE1       NUMBER(22),
    SPARE2       NUMBER(22),
    OBJ#         NUMBER(22) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    COLLID       NUMBER,
    COLLINTCOL#  NUMBER,
    ACDRRESCOL#  NUMBER,
    constraint LOGMNR_COL$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1COL$
    on LOGMNR_COL$ (LOGMNR_UID, OBJ#, INTCOL#)
/

create index LOGMNR_I2COL$
    on LOGMNR_COL$ (LOGMNR_UID, OBJ#, NAME)
/

create index LOGMNR_I3COL$
    on LOGMNR_COL$ (LOGMNR_UID, OBJ#, COL#)
/

