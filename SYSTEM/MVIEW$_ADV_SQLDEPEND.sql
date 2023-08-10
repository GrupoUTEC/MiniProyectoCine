create table MVIEW$_ADV_SQLDEPEND
(
    COLLECTIONID# NUMBER,
    INST_ID       NUMBER,
    FROM_ADDRESS  RAW(16),
    FROM_HASH     NUMBER,
    TO_OWNER      VARCHAR2(128),
    TO_NAME       VARCHAR2(1000),
    TO_TYPE       NUMBER,
    CARDINALITY   NUMBER
)
/

comment on table MVIEW$_ADV_SQLDEPEND is 'Temporary table for workload collections'
/

create index MVIEW$_ADV_SQLDEPEND_IDX_01
    on MVIEW$_ADV_SQLDEPEND (COLLECTIONID#, FROM_ADDRESS, FROM_HASH, INST_ID)
/

