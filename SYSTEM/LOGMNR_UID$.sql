create table LOGMNR_UID$
(
    LOGMNR_UID NUMBER(22) not null
        constraint LOGMNR_UID$_PK
            primary key,
    LOGMNR_DID NUMBER,
    LOGMNR_MDH NUMBER,
    PDB_NAME   VARCHAR2(384),
    PDB_ID     NUMBER,
    PDB_UID    NUMBER,
    START_SCN  NUMBER,
    END_SCN    NUMBER,
    FLAGS      NUMBER,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    SPARE3     VARCHAR2(4000),
    SPARE4     TIMESTAMP(6)
)
/

