create table MVIEW$_ADV_FILTERINSTANCE
(
    RUNID#        NUMBER not null
        constraint MVIEW$_ADV_FILTERINSTANCE_FK
            references MVIEW$_ADV_LOG,
    FILTERID#     NUMBER,
    SUBFILTERNUM# NUMBER,
    SUBFILTERTYPE NUMBER,
    STR_VALUE     VARCHAR2(1028),
    NUM_VALUE1    NUMBER,
    NUM_VALUE2    NUMBER,
    DATE_VALUE1   DATE,
    DATE_VALUE2   DATE
)
/

comment on table MVIEW$_ADV_FILTERINSTANCE is 'Table for workload filter instance definition'
/

