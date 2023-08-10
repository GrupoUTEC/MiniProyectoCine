create table LOGMNR_CDEF$
(
    CON#         NUMBER,
    COLS         NUMBER,
    TYPE#        NUMBER,
    ROBJ#        NUMBER,
    RCON#        NUMBER,
    ENABLED      NUMBER,
    DEFER        NUMBER,
    OBJ#         NUMBER not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_CDEF$_PK
        primary key (LOGMNR_UID, CON#)
)
/

create index LOGMNR_I1CDEF$
    on LOGMNR_CDEF$ (LOGMNR_UID, CON#)
/

create index LOGMNR_I2CDEF$
    on LOGMNR_CDEF$ (LOGMNR_UID, ROBJ#)
/

create index LOGMNR_I3CDEF$
    on LOGMNR_CDEF$ (LOGMNR_UID, OBJ#)
/

