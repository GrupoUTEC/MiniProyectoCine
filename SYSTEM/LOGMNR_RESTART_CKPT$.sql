create table LOGMNR_RESTART_CKPT$
(
    SESSION#    NUMBER not null,
    VALID       NUMBER,
    CKPT_SCN    NUMBER not null,
    XIDUSN      NUMBER not null,
    XIDSLT      NUMBER not null,
    XIDSQN      NUMBER not null,
    SESSION_NUM NUMBER not null,
    SERIAL_NUM  NUMBER not null,
    CKPT_INFO   BLOB,
    FLAG        NUMBER,
    OFFSET      NUMBER,
    CLIENT_DATA BLOB,
    SPARE1      NUMBER,
    SPARE2      NUMBER,
    PDBID       NUMBER not null,
    constraint LOGMNR_RESTART_CKPT$_PK
        primary key (SESSION#, CKPT_SCN, XIDUSN, XIDSLT, XIDSQN, PDBID, SESSION_NUM, SERIAL_NUM)
)
/

