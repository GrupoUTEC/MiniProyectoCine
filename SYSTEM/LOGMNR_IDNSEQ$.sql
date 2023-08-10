create table LOGMNR_IDNSEQ$
(
    OBJ#         NUMBER not null,
    INTCOL#      NUMBER not null,
    SEQOBJ#      NUMBER not null,
    STARTWITH    NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_IDNSEQ$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1IDNSEQ$
    on LOGMNR_IDNSEQ$ (LOGMNR_UID, OBJ#, INTCOL#)
/

create index LOGMNR_I2IDNSEQ$
    on LOGMNR_IDNSEQ$ (LOGMNR_UID, SEQOBJ#)
/

