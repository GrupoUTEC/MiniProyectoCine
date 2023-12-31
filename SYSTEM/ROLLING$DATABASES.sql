create table ROLLING$DATABASES
(
    RDBID         NUMBER,
    ATTRIBUTES    NUMBER,
    ATTRIBUTES2   NUMBER,
    DBUN          VARCHAR2(128),
    DBID          NUMBER,
    PROD_RSCN     NUMBER,
    PROD_RID      NUMBER,
    PROD_SCN      NUMBER,
    CONS_RSCN     NUMBER,
    CONS_RID      NUMBER,
    CONS_SCN      NUMBER,
    ENGINE_STATUS NUMBER,
    VERSION       VARCHAR2(128),
    REDO_SOURCE   NUMBER,
    UPDATE_TIME   TIMESTAMP(6),
    REVISION      NUMBER,
    SPARE1        NUMBER,
    SPARE2        NUMBER,
    SPARE3        VARCHAR2(128)
)
/

