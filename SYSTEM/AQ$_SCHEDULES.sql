create table AQ$_SCHEDULES
(
    OID         RAW(16)       not null,
    DESTINATION VARCHAR2(390) not null,
    START_TIME  DATE,
    DURATION    VARCHAR2(8),
    NEXT_TIME   VARCHAR2(128),
    LATENCY     VARCHAR2(8),
    LAST_TIME   DATE,
    JOBNO       NUMBER
        constraint AQ$_SCHEDULES_CHECK
            unique,
    constraint AQ$_SCHEDULES_PRIMARY
        primary key (OID, DESTINATION)
)
/

