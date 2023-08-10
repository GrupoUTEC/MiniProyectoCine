create table LOGMNR_SEED$
(
    SEED_VERSION   NUMBER(22),
    GATHER_VERSION NUMBER(22),
    SCHEMANAME     VARCHAR2(384),
    OBJ#           NUMBER,
    OBJV#          NUMBER(22),
    TABLE_NAME     VARCHAR2(384),
    COL_NAME       VARCHAR2(384),
    COL#           NUMBER,
    INTCOL#        NUMBER,
    SEGCOL#        NUMBER,
    TYPE#          NUMBER,
    LENGTH         NUMBER,
    PRECISION#     NUMBER,
    SCALE          NUMBER,
    NULL$          NUMBER not null,
    LOGMNR_UID     NUMBER(22),
    LOGMNR_FLAGS   NUMBER(22),
    constraint LOGMNR_SEED$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#)
)
/

create index LOGMNR_I1SEED$
    on LOGMNR_SEED$ (LOGMNR_UID, OBJ#, INTCOL#)
/

create index LOGMNR_I2SEED$
    on LOGMNR_SEED$ (LOGMNR_UID, SCHEMANAME, TABLE_NAME, COL_NAME, OBJ#, INTCOL#)
/

