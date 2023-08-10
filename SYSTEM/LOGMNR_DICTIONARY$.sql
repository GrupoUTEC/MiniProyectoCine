create table LOGMNR_DICTIONARY$
(
    DB_NAME              VARCHAR2(27),
    DB_ID                NUMBER(20),
    DB_CREATED           VARCHAR2(20),
    DB_DICT_CREATED      VARCHAR2(20),
    DB_DICT_SCN          NUMBER(22),
    DB_THREAD_MAP        RAW(8),
    DB_TXN_SCNBAS        NUMBER(22),
    DB_TXN_SCNWRP        NUMBER(22),
    DB_RESETLOGS_CHANGE# NUMBER(22),
    DB_RESETLOGS_TIME    VARCHAR2(20),
    DB_VERSION_TIME      VARCHAR2(20),
    DB_REDO_TYPE_ID      VARCHAR2(8),
    DB_REDO_RELEASE      VARCHAR2(60),
    DB_CHARACTER_SET     VARCHAR2(192),
    DB_VERSION           VARCHAR2(240),
    DB_STATUS            VARCHAR2(240),
    DB_GLOBAL_NAME       VARCHAR2(384),
    DB_DICT_MAXOBJECTS   NUMBER(22),
    DB_DICT_OBJECTCOUNT  NUMBER(22) not null,
    LOGMNR_UID           NUMBER(22)
        constraint LOGMNR_DICTIONARY$_PK
            primary key,
    LOGMNR_FLAGS         NUMBER(22),
    PDB_NAME             VARCHAR2(384),
    PDB_ID               NUMBER,
    PDB_UID              NUMBER,
    PDB_DBID             NUMBER,
    PDB_GUID             RAW(16),
    PDB_CREATE_SCN       NUMBER,
    PDB_COUNT            NUMBER,
    PDB_GLOBAL_NAME      VARCHAR2(384),
    FED_ROOT_CON_ID#     NUMBER
)
/

create index LOGMNR_I1DICTIONARY$
    on LOGMNR_DICTIONARY$ (LOGMNR_UID)
/

