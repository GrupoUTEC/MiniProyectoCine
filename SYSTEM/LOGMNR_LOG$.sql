create table LOGMNR_LOG$
(
    SESSION#               NUMBER not null,
    THREAD#                NUMBER not null,
    SEQUENCE#              NUMBER not null,
    FIRST_CHANGE#          NUMBER not null,
    NEXT_CHANGE#           NUMBER,
    FIRST_TIME             DATE,
    NEXT_TIME              DATE,
    FILE_NAME              VARCHAR2(513),
    STATUS                 NUMBER,
    INFO                   VARCHAR2(32),
    TIMESTAMP              DATE,
    DICT_BEGIN             VARCHAR2(3),
    DICT_END               VARCHAR2(3),
    STATUS_INFO            VARCHAR2(32),
    DB_ID                  NUMBER not null,
    RESETLOGS_CHANGE#      NUMBER not null,
    RESET_TIMESTAMP        NUMBER not null,
    PREV_RESETLOGS_CHANGE# NUMBER,
    PREV_RESET_TIMESTAMP   NUMBER,
    BLOCKS                 NUMBER,
    BLOCK_SIZE             NUMBER,
    FLAGS                  NUMBER,
    CONTENTS               NUMBER,
    RECID                  NUMBER,
    RECSTAMP               NUMBER,
    MARK_DELETE_TIMESTAMP  NUMBER,
    SPARE1                 NUMBER,
    SPARE2                 NUMBER,
    SPARE3                 NUMBER,
    SPARE4                 NUMBER,
    SPARE5                 NUMBER,
    constraint LOGMNR_LOG$_PK
        primary key (SESSION#, THREAD#, SEQUENCE#, FIRST_CHANGE#, DB_ID, RESETLOGS_CHANGE#, RESET_TIMESTAMP)
)
/

create index LOGMNR_LOG$_FLAGS
    on LOGMNR_LOG$ (FLAGS)
/

create index LOGMNR_LOG$_FIRST_CHANGE#
    on LOGMNR_LOG$ (FIRST_CHANGE#)
/

create index LOGMNR_LOG$_RECID
    on LOGMNR_LOG$ (RECID)
/

create index LOGMNR_LOG$_PURGE_IDX1
    on LOGMNR_LOG$ (FILE_NAME, STATUS)
/

create index LOGMNR_LOG$_PURGE_IDX2
    on LOGMNR_LOG$ (SESSION#, RESET_TIMESTAMP, NEXT_CHANGE#, STATUS)
/

