create table LOGMNR_CCOL$
(
    CON#         NUMBER,
    OBJ#         NUMBER,
    COL#         NUMBER,
    POS#         NUMBER,
    INTCOL#      NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_CCOL$_PK
        primary key (LOGMNR_UID, CON#, INTCOL#)
)
/

create index LOGMNR_I1CCOL$
    on LOGMNR_CCOL$ (LOGMNR_UID, CON#, INTCOL#)
/

