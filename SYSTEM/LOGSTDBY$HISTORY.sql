create table LOGSTDBY$HISTORY
(
    STREAM_SEQUENCE# NUMBER,
    LMNR_SID         NUMBER,
    DBID             NUMBER,
    FIRST_CHANGE#    NUMBER,
    LAST_CHANGE#     NUMBER,
    SOURCE           NUMBER,
    STATUS           NUMBER,
    FIRST_TIME       DATE,
    LAST_TIME        DATE,
    DGNAME           VARCHAR2(255),
    SPARE1           NUMBER,
    SPARE2           NUMBER,
    SPARE3           VARCHAR2(2000)
)
/

