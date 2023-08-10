create table LOGMNRC_TSPART
(
    LOGMNR_UID NUMBER not null,
    OBJ#       NUMBER not null,
    TS#        NUMBER not null,
    START_SCN  NUMBER not null,
    DROP_SCN   NUMBER,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    SPARE3     VARCHAR2(4000),
    constraint LOGMNRC_TSPART_PK
        primary key (LOGMNR_UID, OBJ#, START_SCN)
)
/

create index LOGMNRC_I1TSPART
    on LOGMNRC_TSPART (LOGMNR_UID, DROP_SCN)
/

