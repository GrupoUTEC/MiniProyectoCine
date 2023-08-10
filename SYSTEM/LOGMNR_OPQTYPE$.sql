create table LOGMNR_OPQTYPE$
(
    INTCOL#      NUMBER not null,
    TYPE         NUMBER,
    FLAGS        NUMBER,
    LOBCOL       NUMBER,
    OBJCOL       NUMBER,
    EXTRACOL     NUMBER,
    SCHEMAOID    RAW(16),
    ELEMNUM      NUMBER,
    SCHEMAURL    VARCHAR2(4000),
    OBJ#         NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_OPQTYPE$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1OPQTYPE$
    on LOGMNR_OPQTYPE$ (LOGMNR_UID, OBJ#, INTCOL#)
/

