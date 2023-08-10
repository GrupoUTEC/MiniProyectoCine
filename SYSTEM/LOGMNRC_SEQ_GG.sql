create table LOGMNRC_SEQ_GG
(
    LOGMNR_UID NUMBER        not null,
    OBJ#       NUMBER        not null,
    COMMIT_SCN NUMBER        not null,
    DROP_SCN   NUMBER,
    SEQ_FLAGS  NUMBER        not null,
    OWNER#     NUMBER        not null,
    OWNERNAME  VARCHAR2(384) not null,
    OBJNAME    VARCHAR2(384) not null,
    SEQCACHE   NUMBER,
    SEQINC     NUMBER,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    SPARE3     VARCHAR2(4000),
    SPARE4     VARCHAR2(4000),
    constraint LOGMNRC_SEQ_GG_PK
        primary key (LOGMNR_UID, OBJ#, COMMIT_SCN)
)
/

create index LOGMNRC_I2SEQGG
    on LOGMNRC_SEQ_GG (LOGMNR_UID, DROP_SCN)
/

