create table MVIEW$_ADV_FILTER
(
    FILTERID#     NUMBER not null,
    SUBFILTERNUM# NUMBER not null,
    SUBFILTERTYPE NUMBER not null,
    STR_VALUE     VARCHAR2(1028),
    NUM_VALUE1    NUMBER,
    NUM_VALUE2    NUMBER,
    DATE_VALUE1   DATE,
    DATE_VALUE2   DATE,
    constraint MVIEW$_ADV_FILTER_PK
        primary key (FILTERID#, SUBFILTERNUM#)
)
/

comment on table MVIEW$_ADV_FILTER is 'Table for workload filter definition'
/

