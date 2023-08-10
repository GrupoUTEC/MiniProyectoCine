create table LOGMNR_DID$
(
    SESSION#   NUMBER not null
        constraint LOGMNR_DID$_PK
            primary key,
    LOGMNR_DID NUMBER,
    FLAGS      NUMBER default 0,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    SPARE3     VARCHAR2(4000),
    SPARE4     TIMESTAMP(6)
)
/

