create table LOGMNRC_GSBA
(
    LOGMNR_UID       NUMBER not null,
    AS_OF_SCN        NUMBER not null,
    FDO_LENGTH       NUMBER,
    FDO_VALUE        RAW(255),
    CHARSETID        NUMBER,
    NCHARSETID       NUMBER,
    DBTIMEZONE_LEN   NUMBER,
    DBTIMEZONE_VALUE VARCHAR2(192),
    LOGMNR_SPARE1    NUMBER,
    LOGMNR_SPARE2    NUMBER,
    LOGMNR_SPARE3    VARCHAR2(1000),
    LOGMNR_SPARE4    DATE,
    DB_GLOBAL_NAME   VARCHAR2(384),
    constraint LOGMNRC_GSBA_PK
        primary key (LOGMNR_UID, AS_OF_SCN)
)
/

