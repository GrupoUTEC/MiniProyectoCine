create table LOGMNR_RESTART_CKPT_TXINFO$
(
    SESSION#      NUMBER not null,
    XIDUSN        NUMBER not null,
    XIDSLT        NUMBER not null,
    XIDSQN        NUMBER not null,
    SESSION_NUM   NUMBER not null,
    SERIAL_NUM    NUMBER not null,
    FLAG          NUMBER,
    START_SCN     NUMBER,
    EFFECTIVE_SCN NUMBER not null,
    OFFSET        NUMBER,
    TX_DATA       BLOB,
    constraint LOGMNR_RESTART_CKPT_TXINFO$_PK
        primary key (SESSION#, XIDUSN, XIDSLT, XIDSQN, SESSION_NUM, SERIAL_NUM, EFFECTIVE_SCN)
)
/

