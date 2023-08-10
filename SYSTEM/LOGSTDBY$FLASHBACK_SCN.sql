create table LOGSTDBY$FLASHBACK_SCN
(
    PRIMARY_SCN  NUMBER not null
        primary key,
    PRIMARY_TIME DATE,
    STANDBY_SCN  NUMBER,
    STANDBY_TIME DATE,
    SPARE1       NUMBER,
    SPARE2       NUMBER,
    SPARE3       DATE
)
/

