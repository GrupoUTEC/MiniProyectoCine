create table LOGMNR_CONTAINER$
(
    OBJ#             NUMBER not null,
    CON_ID#          NUMBER not null,
    DBID             NUMBER not null,
    CON_UID          NUMBER not null,
    CREATE_SCNWRP    NUMBER not null,
    CREATE_SCNBAS    NUMBER not null,
    FLAGS            NUMBER,
    STATUS           NUMBER not null,
    LOGMNR_UID       NUMBER(22),
    LOGMNR_FLAGS     NUMBER(22),
    VSN              NUMBER,
    FED_ROOT_CON_ID# NUMBER,
    constraint LOGMNR_CONTAINER$_PK
        primary key (LOGMNR_UID, OBJ#)
)
/

create index LOGMNR_I1CONTAINER$
    on LOGMNR_CONTAINER$ (LOGMNR_UID, CON_ID#)
/

