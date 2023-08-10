create table LOGMNR_ATTRCOL$
(
    INTCOL#      NUMBER,
    NAME         VARCHAR2(4000),
    OBJ#         NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_ATTRCOL$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1ATTRCOL$
    on LOGMNR_ATTRCOL$ (LOGMNR_UID, OBJ#, INTCOL#)
/

