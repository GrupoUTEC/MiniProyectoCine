create table LOGMNRC_CONCOL_GG
(
    LOGMNR_UID NUMBER not null,
    CON#       NUMBER not null,
    COMMIT_SCN NUMBER not null,
    INTCOL#    NUMBER not null,
    POS#       NUMBER,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    SPARE3     VARCHAR2(4000),
    constraint LOGMNRC_CONCOL_GG_PK
        primary key (LOGMNR_UID, CON#, COMMIT_SCN, INTCOL#)
)
/

