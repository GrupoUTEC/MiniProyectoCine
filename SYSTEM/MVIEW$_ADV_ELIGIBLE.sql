create table MVIEW$_ADV_ELIGIBLE
(
    SUMOBJN#  NUMBER not null,
    RUNID#    NUMBER not null
        constraint MVIEW$_ADV_ELIGIBLE_FK
            references MVIEW$_ADV_LOG,
    BYTECOST  NUMBER not null,
    FLAGS     NUMBER not null,
    FREQUENCY NUMBER not null,
    constraint MVIEW$_ADV_ELIGIBLE_PK
        primary key (SUMOBJN#, RUNID#)
)
/

comment on table MVIEW$_ADV_ELIGIBLE is 'Summary management rewrite eligibility information'
/

