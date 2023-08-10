create table LOGMNRC_IND_GG
(
    LOGMNR_UID NUMBER        not null,
    OBJ#       NUMBER        not null,
    NAME       VARCHAR2(384) not null,
    COMMIT_SCN NUMBER        not null,
    DROP_SCN   NUMBER,
    BASEOBJ#   NUMBER        not null,
    BASEOBJV#  NUMBER        not null,
    FLAGS      NUMBER        not null,
    OWNER#     NUMBER        not null,
    OWNERNAME  VARCHAR2(384) not null,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    SPARE3     NUMBER,
    SPARE4     VARCHAR2(4000),
    SPARE5     VARCHAR2(4000),
    SPARE6     VARCHAR2(4000),
    constraint LOGMNRC_IND_GG_PK
        primary key (LOGMNR_UID, OBJ#, COMMIT_SCN)
)
/

create index LOGMNRC_I1INDGG
    on LOGMNRC_IND_GG (LOGMNR_UID, BASEOBJ#, BASEOBJV#, COMMIT_SCN)
/

create index LOGMNRC_I2INDGG
    on LOGMNRC_IND_GG (LOGMNR_UID, DROP_SCN)
/

