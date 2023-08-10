create table LOGMNRC_SHARD_TS
(
    LOGMNR_UID      NUMBER       not null,
    TABLESPACE_NAME VARCHAR2(90) not null,
    CHUNK_NUMBER    NUMBER       not null,
    START_SCN       NUMBER       not null,
    DROP_SCN        NUMBER,
    SPARE1          NUMBER,
    SPARE2          NUMBER,
    SPARE3          VARCHAR2(4000),
    constraint LOGMNRC_SHARD_TS_PK
        primary key (LOGMNR_UID, TABLESPACE_NAME, START_SCN)
)
/

create index LOGMNRC_I1SHARD_TS
    on LOGMNRC_SHARD_TS (LOGMNR_UID, DROP_SCN)
/

