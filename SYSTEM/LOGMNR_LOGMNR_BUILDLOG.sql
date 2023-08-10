create table LOGMNR_LOGMNR_BUILDLOG
(
    BUILD_DATE              VARCHAR2(20),
    DB_TXN_SCNBAS           NUMBER,
    DB_TXN_SCNWRP           NUMBER,
    CURRENT_BUILD_STATE     NUMBER,
    COMPLETION_STATUS       NUMBER,
    MARKED_LOG_FILE_LOW_SCN NUMBER,
    INITIAL_XID             VARCHAR2(22) not null,
    LOGMNR_UID              NUMBER(22),
    LOGMNR_FLAGS            NUMBER(22),
    CDB_XID                 VARCHAR2(22),
    SPARE1                  NUMBER,
    SPARE2                  VARCHAR2(4000),
    constraint LOGMNR_LOGMNR_BUILDLOG_PK
        primary key (LOGMNR_UID, INITIAL_XID)
)
/

create index LOGMNR_I1LOGMNR_BUILDLOG
    on LOGMNR_LOGMNR_BUILDLOG (LOGMNR_UID, INITIAL_XID)
/

