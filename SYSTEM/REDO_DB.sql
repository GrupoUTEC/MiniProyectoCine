create table REDO_DB
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
    SEQNO_RCV_CUR      NUMBER,
    SEQNO_RCV_LO       NUMBER,
    SEQNO_RCV_HI       NUMBER,
    SEQNO_DONE_CUR     NUMBER,
    SEQNO_DONE_LO      NUMBER,
    SEQNO_DONE_HI      NUMBER,
    GAP_SEQNO          NUMBER,
    GAP_RET            NUMBER,
    GAP_DONE           NUMBER,
    APPLY_SEQNO        NUMBER,
    APPLY_DONE         NUMBER,
    PURGE_DONE         NUMBER,
    HAS_CHILD          NUMBER,
    ERROR1             NUMBER,
    STATUS             NUMBER,
    CREATE_DATE        DATE,
    TS1                NUMBER,
    TS2                NUMBER,
    GAP_NEXT_SCN       NUMBER,
    GAP_NEXT_TIME      NUMBER,
    CURSCN_TIME        NUMBER,
    RESETLOGS_SCN      NUMBER not null,
    PRESETLOGS_SCN     NUMBER not null,
    GAP_RET2           NUMBER,
    CURLOG             NUMBER,
    ENDIAN             NUMBER,
    ENQIDX             NUMBER,
    SPARE4             NUMBER,
    SPARE5             DATE,
    SPARE6             VARCHAR2(65),
    SPARE7             VARCHAR2(129),
    TS3                NUMBER,
    CURBLKNO           NUMBER,
    SPARE8             NUMBER,
    SPARE9             NUMBER,
    SPARE10            NUMBER,
    SPARE11            NUMBER,
    SPARE12            NUMBER,
    TENANT_KEY         NUMBER not null
)
/

create index REDO_DB_IDX
    on REDO_DB (TENANT_KEY, DBID, THREAD#, RESETLOGS_SCN, RESETLOGS_TIME)
/

