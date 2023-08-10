create table MVIEW$_ADV_ROLLUP
(
    RUNID#    NUMBER not null
        constraint MVIEW$_ADV_ROLLUP_FK
            references MVIEW$_ADV_LOG,
    CLEVELID# NUMBER not null,
    PLEVELID# NUMBER not null,
    FLAGS     NUMBER not null,
    constraint MVIEW$_ADV_ROLLUP_PK
        primary key (RUNID#, CLEVELID#, PLEVELID#),
    constraint MVIEW$_ADV_ROLLUP_CFK
        foreign key (RUNID#, CLEVELID#) references MVIEW$_ADV_LEVEL,
    constraint MVIEW$_ADV_ROLLUP_PFK
        foreign key (RUNID#, PLEVELID#) references MVIEW$_ADV_LEVEL
)
/

comment on table MVIEW$_ADV_ROLLUP is 'Each row repesents either a functional dependency or join-key relationship'
/

