create table LOGMNRC_TS
(
    LOGMNR_UID NUMBER     not null,
    TS#        NUMBER(22) not null,
    NAME       VARCHAR2(90),
    START_SCN  NUMBER     not null,
    DROP_SCN   NUMBER,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    SPARE3     VARCHAR2(4000),
    constraint LOGMNRC_TS_PK
        primary key (LOGMNR_UID, TS#, START_SCN)
)
/

create index LOGMNRC_I1TS
    on LOGMNRC_TS (LOGMNR_UID, DROP_SCN)
/

