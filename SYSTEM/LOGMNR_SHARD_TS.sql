create table LOGMNR_SHARD_TS
(
    LOGMNR_UID      NUMBER       not null,
    TABLESPACE_NAME VARCHAR2(90) not null,
    CHUNK_NUMBER    NUMBER       not null,
    START_SCNBAS    NUMBER,
    START_SCNWRP    NUMBER,
    constraint LOGMNR_SHARD_TS_PK
        primary key (LOGMNR_UID, TABLESPACE_NAME)
)
/

create index LOGMNR_I1SHARD_TS
    on LOGMNR_SHARD_TS (LOGMNR_UID, TABLESPACE_NAME)
/

