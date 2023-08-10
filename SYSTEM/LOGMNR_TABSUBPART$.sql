create table LOGMNR_TABSUBPART$
(
    OBJ#         NUMBER(22),
    DATAOBJ#     NUMBER(22),
    POBJ#        NUMBER(22),
    SUBPART#     NUMBER(22),
    TS#          NUMBER(22) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_TABSUBPART$_PK
        primary key (LOGMNR_UID, OBJ#, POBJ#)
)
/

create index LOGMNR_I1TABSUBPART$
    on LOGMNR_TABSUBPART$ (LOGMNR_UID, OBJ#, POBJ#)
/

create index LOGMNR_I2TABSUBPART$
    on LOGMNR_TABSUBPART$ (LOGMNR_UID, POBJ#)
/

