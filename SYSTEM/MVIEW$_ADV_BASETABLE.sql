create table MVIEW$_ADV_BASETABLE
(
    COLLECTIONID# NUMBER not null,
    QUERYID#      NUMBER not null
        constraint MVIEW$_ADV_BASETABLE_FK
            references MVIEW$_ADV_WORKLOAD,
    OWNER         VARCHAR2(128),
    TABLE_NAME    VARCHAR2(128),
    TABLE_TYPE    NUMBER
)
/

comment on table MVIEW$_ADV_BASETABLE is 'Base tables refered by a query'
/

create index MVIEW$_ADV_BASETABLE_IDX_01
    on MVIEW$_ADV_BASETABLE (QUERYID#)
/

