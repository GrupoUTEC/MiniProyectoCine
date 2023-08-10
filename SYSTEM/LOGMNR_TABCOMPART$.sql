create table LOGMNR_TABCOMPART$
(
    OBJ#         NUMBER(22),
    BO#          NUMBER(22),
    PART#        NUMBER(22) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_TABCOMPART$_PK
        primary key (LOGMNR_UID, OBJ#)
)
/

create index LOGMNR_I1TABCOMPART$
    on LOGMNR_TABCOMPART$ (LOGMNR_UID, OBJ#)
/

create index LOGMNR_I2TABCOMPART$
    on LOGMNR_TABCOMPART$ (LOGMNR_UID, BO#)
/

