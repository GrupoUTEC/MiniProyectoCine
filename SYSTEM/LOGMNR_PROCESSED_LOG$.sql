create table LOGMNR_PROCESSED_LOG$
(
    SESSION#      NUMBER not null,
    THREAD#       NUMBER not null,
    SEQUENCE#     NUMBER,
    FIRST_CHANGE# NUMBER,
    NEXT_CHANGE#  NUMBER,
    FIRST_TIME    DATE,
    NEXT_TIME     DATE,
    FILE_NAME     VARCHAR2(513),
    STATUS        NUMBER,
    INFO          VARCHAR2(32),
    TIMESTAMP     DATE,
    constraint LOGMNR_PROCESSED_LOG$_PK
        primary key (SESSION#, THREAD#)
)
/

