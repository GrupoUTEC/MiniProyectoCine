create table LOGMNR_IND$
(
    BO#          NUMBER(22),
    COLS         NUMBER(22),
    TYPE#        NUMBER(22),
    FLAGS        NUMBER,
    PROPERTY     NUMBER,
    OBJ#         NUMBER(22) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_IND$_PK
        primary key (LOGMNR_UID, OBJ#)
)
/

create index LOGMNR_I1IND$
    on LOGMNR_IND$ (LOGMNR_UID, OBJ#)
/

create index LOGMNR_I2IND$
    on LOGMNR_IND$ (LOGMNR_UID, BO#)
/

