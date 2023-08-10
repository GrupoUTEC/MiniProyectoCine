create table MVIEW$_ADV_GC
(
    GCID#     NUMBER   not null
        constraint MVIEW$_ADV_GC_PK
            primary key,
    FJGID#    NUMBER   not null
        constraint MVIEW$_ADV_GC_FK
            references MVIEW$_ADV_FJG,
    GCDESLEN  NUMBER   not null,
    GCDES     LONG RAW not null,
    HASHVALUE NUMBER   not null,
    FREQUENCY NUMBER
)
/

comment on table MVIEW$_ADV_GC is 'Group-by columns of a query'
/

