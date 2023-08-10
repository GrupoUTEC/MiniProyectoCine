create table MVIEW$_ADV_LEVEL
(
    RUNID#     NUMBER  not null
        constraint MVIEW$_ADV_LEVEL_FK
            references MVIEW$_ADV_LOG,
    LEVELID#   NUMBER  not null,
    DIMOBJ#    NUMBER,
    FLAGS      NUMBER  not null,
    TBLOBJ#    NUMBER  not null,
    COLUMNLIST RAW(70) not null,
    LEVELNAME  VARCHAR2(128),
    constraint MVIEW$_ADV_LEVEL_PK
        primary key (RUNID#, LEVELID#)
)
/

comment on table MVIEW$_ADV_LEVEL is 'Level definition'
/

