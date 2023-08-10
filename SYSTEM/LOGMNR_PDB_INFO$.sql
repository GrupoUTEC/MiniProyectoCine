create table LOGMNR_PDB_INFO$
(
    LOGMNR_DID      NUMBER not null,
    LOGMNR_MDH      NUMBER not null,
    PDB_NAME        VARCHAR2(384),
    PDB_ID          NUMBER,
    PDB_UID         NUMBER,
    PLUGIN_SCN      NUMBER not null,
    UNPLUG_SCN      NUMBER,
    FLAGS           NUMBER,
    SPARE1          NUMBER,
    SPARE2          NUMBER,
    SPARE3          VARCHAR2(4000),
    SPARE4          TIMESTAMP(6),
    PDB_GLOBAL_NAME VARCHAR2(384),
    constraint LOGMNR_PDB_INFO$_PK
        primary key (LOGMNR_DID, LOGMNR_MDH, PLUGIN_SCN)
)
/

