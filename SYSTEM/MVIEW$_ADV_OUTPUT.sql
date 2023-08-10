create table MVIEW$_ADV_OUTPUT
(
    RUNID#                NUMBER not null
        constraint MVIEW$_ADV_OUTPUT_FK
            references MVIEW$_ADV_LOG,
    OUTPUT_TYPE           NUMBER not null,
    RANK#                 NUMBER not null,
    ACTION_TYPE           VARCHAR2(6),
    SUMMARY_OWNER         VARCHAR2(128),
    SUMMARY_NAME          VARCHAR2(128),
    GROUP_BY_COLUMNS      VARCHAR2(2000),
    WHERE_CLAUSE          VARCHAR2(2000),
    FROM_CLAUSE           VARCHAR2(2000),
    MEASURES_LIST         VARCHAR2(2000),
    FACT_TABLES           VARCHAR2(1000),
    GROUPING_LEVELS       VARCHAR2(2000),
    QUERYLEN              NUMBER,
    QUERY_TEXT            LONG,
    STORAGE_IN_BYTES      NUMBER,
    PCT_PERFORMANCE_GAIN  NUMBER,
    FREQUENCY             NUMBER,
    CUMULATIVE_BENEFIT    NUMBER,
    BENEFIT_TO_COST_RATIO NUMBER not null,
    VALIDATED             NUMBER,
    constraint MVIEW$_ADV_OUTPUT_PK
        primary key (RUNID#, RANK#)
)
/

comment on table MVIEW$_ADV_OUTPUT is 'Output table for summary recommendations and evaluations'
/

