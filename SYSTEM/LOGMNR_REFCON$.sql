create table LOGMNR_REFCON$
(
    COL#         NUMBER,
    INTCOL#      NUMBER,
    REFTYP       NUMBER,
    STABID       RAW(16),
    EXPCTOID     RAW(16),
    OBJ#         NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_REFCON$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1REFCON$
    on LOGMNR_REFCON$ (LOGMNR_UID, OBJ#, INTCOL#)
/

