create table MVIEW$_ADV_AJG
(
    AJGID#    NUMBER   not null
        constraint MVIEW$_ADV_AJG_PK
            primary key,
    RUNID#    NUMBER   not null
        constraint MVIEW$_ADV_AJG_FK
            references MVIEW$_ADV_LOG,
    AJGDESLEN NUMBER   not null,
    AJGDES    LONG RAW not null,
    HASHVALUE NUMBER   not null,
    FREQUENCY NUMBER
)
/

comment on table MVIEW$_ADV_AJG is 'Anchor-join graph representation'
/

