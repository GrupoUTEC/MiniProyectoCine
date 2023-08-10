create table LOGMNR_SESSION$
(
    SESSION#             NUMBER        not null
        constraint LOGMNR_SESSION_PK
            primary key,
    CLIENT#              NUMBER,
    SESSION_NAME         VARCHAR2(128) not null
        constraint LOGMNR_SESSION_UK1
            unique,
    DB_ID                NUMBER,
    RESETLOGS_CHANGE#    NUMBER,
    SESSION_ATTR         NUMBER,
    SESSION_ATTR_VERBOSE VARCHAR2(400),
    START_SCN            NUMBER,
    END_SCN              NUMBER,
    SPILL_SCN            NUMBER,
    SPILL_TIME           DATE,
    OLDEST_SCN           NUMBER,
    RESUME_SCN           NUMBER,
    GLOBAL_DB_NAME       VARCHAR2(384) default null,
    RESET_TIMESTAMP      NUMBER,
    BRANCH_SCN           NUMBER,
    VERSION              VARCHAR2(64),
    REDO_COMPAT          VARCHAR2(20),
    SPARE1               NUMBER,
    PURGE_SCN            NUMBER,
    SPARE3               NUMBER,
    SPARE4               NUMBER,
    SPARE5               NUMBER,
    SPARE6               DATE,
    SPARE7               VARCHAR2(1000),
    SPARE8               VARCHAR2(1000),
    SPARE9               NUMBER
)
/

