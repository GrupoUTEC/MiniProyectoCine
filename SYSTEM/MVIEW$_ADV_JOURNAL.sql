create table MVIEW$_ADV_JOURNAL
(
    RUNID#    NUMBER not null
        constraint MVIEW$_ADV_JOURNAL_FK
            references MVIEW$_ADV_LOG,
    SEQ#      NUMBER not null,
    TIMESTAMP DATE   not null,
    FLAGS     NUMBER not null,
    NUM       NUMBER,
    TEXT      LONG,
    TEXTLEN   NUMBER,
    constraint MVIEW$_ADV_JOURNAL_PK
        primary key (RUNID#, SEQ#)
)
/

comment on table MVIEW$_ADV_JOURNAL is 'Summary advisor journal table for debugging and information'
/

