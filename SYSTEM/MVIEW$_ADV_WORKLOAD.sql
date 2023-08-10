create table MVIEW$_ADV_WORKLOAD
(
    QUERYID#      NUMBER        not null
        constraint MVIEW$_ADV_WORKLOAD_PK
            primary key,
    COLLECTIONID# NUMBER        not null,
    COLLECTTIME   DATE          not null,
    APPLICATION   VARCHAR2(128),
    CARDINALITY   NUMBER,
    RESULTSIZE    NUMBER,
    UNAME         VARCHAR2(128) not null,
    QDATE         DATE,
    PRIORITY      NUMBER,
    EXEC_TIME     NUMBER,
    SQL_TEXT      LONG          not null,
    SQL_TEXTLEN   NUMBER        not null,
    SQL_HASH      NUMBER,
    SQL_ADDR      RAW(16),
    FREQUENCY     NUMBER
)
/

comment on table MVIEW$_ADV_WORKLOAD is 'Shared workload repository for DBA users of summary advisor'
/

create index MVIEW$_ADV_WORKLOAD_IDX_01
    on MVIEW$_ADV_WORKLOAD (COLLECTIONID#, QUERYID#)
/

