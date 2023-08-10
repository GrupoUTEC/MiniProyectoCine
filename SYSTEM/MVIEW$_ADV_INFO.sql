create table MVIEW$_ADV_INFO
(
    RUNID#  NUMBER not null
        constraint MVIEW$_ADV_INFO_FK
            references MVIEW$_ADV_LOG,
    SEQ#    NUMBER not null,
    TYPE    NUMBER not null,
    INFOLEN NUMBER not null,
    INFO    LONG RAW,
    STATUS  NUMBER,
    FLAG    NUMBER,
    constraint MVIEW$_ADV_INFO_PK
        primary key (RUNID#, SEQ#)
)
/

comment on table MVIEW$_ADV_INFO is 'Internal table for passing information from the SQL analyzer'
/

