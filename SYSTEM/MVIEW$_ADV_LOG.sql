create table MVIEW$_ADV_LOG
(
    RUNID#     NUMBER not null
        constraint MVIEW$_ADV_LOG_PK
            primary key,
    FILTERID#  NUMBER,
    RUN_BEGIN  DATE,
    RUN_END    DATE,
    RUN_TYPE   NUMBER,
    UNAME      VARCHAR2(128),
    STATUS     NUMBER not null,
    MESSAGE    VARCHAR2(2000),
    COMPLETED  NUMBER,
    TOTAL      NUMBER,
    ERROR_CODE VARCHAR2(20)
)
/

comment on table MVIEW$_ADV_LOG is 'Log all calls to summary advisory functions'
/

