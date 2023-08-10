create table LOGMNRC_INDCOL_GG
(
    LOGMNR_UID NUMBER not null,
    OBJ#       NUMBER not null,
    COMMIT_SCN NUMBER not null,
    INTCOL#    NUMBER not null,
    POS#       NUMBER not null,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    SPARE3     VARCHAR2(4000),
    constraint LOGMNRC_INDCOL_GG_PK
        primary key (LOGMNR_UID, OBJ#, COMMIT_SCN, INTCOL#)
)
/

