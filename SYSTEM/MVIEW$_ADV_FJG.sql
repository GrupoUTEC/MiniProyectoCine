create table MVIEW$_ADV_FJG
(
    FJGID#    NUMBER   not null
        constraint MVIEW$_ADV_FJG_PK
            primary key,
    AJGID#    NUMBER   not null
        constraint MVIEW$_ADV_FJG_FK
            references MVIEW$_ADV_AJG,
    FJGDESLEN NUMBER   not null,
    FJGDES    LONG RAW not null,
    HASHVALUE NUMBER   not null,
    FREQUENCY NUMBER
)
/

comment on table MVIEW$_ADV_FJG is 'Representation for query join sub-graph not in AJG '
/

