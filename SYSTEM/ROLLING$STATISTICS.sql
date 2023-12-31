create table ROLLING$STATISTICS
(
    STATID      NUMBER,
    RDBID       NUMBER,
    ATTRIBUTES  NUMBER,
    TYPE        NUMBER,
    NAME        VARCHAR2(256),
    VALUESTR    VARCHAR2(256),
    VALUENUM    NUMBER,
    VALUETS     TIMESTAMP(6),
    VALUEINT    INTERVAL DAY(3) TO SECOND(2),
    UPDATE_TIME TIMESTAMP(6),
    SPARE1      NUMBER,
    SPARE2      NUMBER,
    SPARE3      VARCHAR2(128)
)
/

