create table LOGMNR_INDSUBPART$
(
    OBJ#         NUMBER(22),
    DATAOBJ#     NUMBER(22),
    POBJ#        NUMBER(22),
    SUBPART#     NUMBER(22),
    TS#          NUMBER(22) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_INDSUBPART$_PK
        primary key (LOGMNR_UID, OBJ#, POBJ#)
)
/

create index LOGMNR_I1INDSUBPART$
    on LOGMNR_INDSUBPART$ (LOGMNR_UID, OBJ#, POBJ#)
/

