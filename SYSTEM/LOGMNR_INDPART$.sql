create table LOGMNR_INDPART$
(
    OBJ#         NUMBER,
    BO#          NUMBER,
    PART#        NUMBER,
    TS#          NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_INDPART$_PK
        primary key (LOGMNR_UID, OBJ#, BO#)
)
/

create index LOGMNR_I1INDPART$
    on LOGMNR_INDPART$ (LOGMNR_UID, OBJ#, BO#)
/

create index LOGMNR_I2INDPART$
    on LOGMNR_INDPART$ (LOGMNR_UID, BO#)
/

