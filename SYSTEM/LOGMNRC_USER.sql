create table LOGMNRC_USER
(
    LOGMNR_UID NUMBER        not null,
    USER#      NUMBER(22)    not null,
    SPARE1     NUMBER,
    NAME       VARCHAR2(384) not null,
    START_SCN  NUMBER        not null,
    DROP_SCN   NUMBER,
    SPARE1_C   NUMBER,
    SPARE2_C   NUMBER,
    SPARE3_C   VARCHAR2(4000),
    constraint LOGMNRC_USER_PK
        primary key (LOGMNR_UID, USER#, START_SCN)
)
/

create index LOGMNRC_I1USER
    on LOGMNRC_USER (LOGMNR_UID, NAME, START_SCN)
/

