create table LOGMNR_ICOL$
(
    OBJ#         NUMBER,
    BO#          NUMBER,
    COL#         NUMBER,
    POS#         NUMBER,
    SEGCOL#      NUMBER,
    INTCOL#      NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_ICOL$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1ICOL$
    on LOGMNR_ICOL$ (LOGMNR_UID, OBJ#, INTCOL#)
/

