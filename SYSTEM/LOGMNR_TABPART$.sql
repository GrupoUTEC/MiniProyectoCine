create table LOGMNR_TABPART$
(
    OBJ#         NUMBER(22),
    TS#          NUMBER(22),
    PART#        NUMBER,
    BO#          NUMBER(22) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_TABPART$_PK
        primary key (LOGMNR_UID, OBJ#, BO#)
)
/

create index LOGMNR_I1TABPART$
    on LOGMNR_TABPART$ (LOGMNR_UID, OBJ#, BO#)
/

create index LOGMNR_I2TABPART$
    on LOGMNR_TABPART$ (LOGMNR_UID, BO#)
/

