create table REDO_LOG
(
    DBID               NUMBER not null,
    GLOBAL_DBNAME      VARCHAR2(129),
    DBUNAME            VARCHAR2(32),
    VERSION            VARCHAR2(32),
    THREAD#            NUMBER not null,
    RESETLOGS_SCN_BAS  NUMBER,
    RESETLOGS_SCN_WRP  NUMBER,
    RESETLOGS_TIME     NUMBER not null,
    PRESETLOGS_SCN_BAS NUMBER,
    PRESETLOGS_SCN_WRP NUMBER,
    PRESETLOGS_TIME    NUMBER not null,
    SEQUENCE#          NUMBER not null,
    DUPID              NUMBER,
    STATUS1            NUMBER,
    STATUS2            NUMBER,
    CREATE_TIME        VARCHAR2(32),
    CLOSE_TIME         VARCHAR2(32),
    DONE_TIME          VARCHAR2(32),
    FIRST_SCN_BAS      NUMBER,
    FIRST_SCN_WRP      NUMBER,
    FIRST_TIME         NUMBER,
    NEXT_SCN_BAS       NUMBER,
    NEXT_SCN_WRP       NUMBER,
    NEXT_TIME          NUMBER,
    FIRST_SCN          NUMBER,
    NEXT_SCN           NUMBER,
    RESETLOGS_SCN      NUMBER not null,
    BLOCKS             NUMBER,
    BLOCK_SIZE         NUMBER,
    OLD_BLOCKS         NUMBER,
    CREATE_DATE        DATE,
    ERROR1             NUMBER,
    ERROR2             NUMBER,
    FILENAME           VARCHAR2(513),
    TS1                NUMBER,
    TS2                NUMBER,
    ENDIAN             NUMBER,
    SPARE2             NUMBER,
    SPARE3             NUMBER,
    SPARE4             NUMBER,
    SPARE5             DATE,
    SPARE6             VARCHAR2(65),
    SPARE7             VARCHAR2(129),
    TS3                NUMBER,
    PRESETLOGS_SCN     NUMBER not null,
    SPARE8             NUMBER,
    SPARE9             NUMBER,
    SPARE10            NUMBER,
    OLD_STATUS1        NUMBER,
    OLD_STATUS2        NUMBER,
    OLD_FILENAME       VARCHAR2(513),
    TENANT_KEY         NUMBER not null
)
/

create index REDO_LOG_IDX
    on REDO_LOG (TENANT_KEY, DBID, THREAD#, RESETLOGS_SCN, RESETLOGS_TIME)
/
