create table LOGMNR_INDCOMPART$
(
    OBJ#         NUMBER,
    DATAOBJ#     NUMBER,
    BO#          NUMBER,
    PART#        NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_INDCOMPART$_PK
        primary key (LOGMNR_UID, OBJ#)
)
/

create index LOGMNR_I1INDCOMPART$
    on LOGMNR_INDCOMPART$ (LOGMNR_UID, OBJ#)
/

