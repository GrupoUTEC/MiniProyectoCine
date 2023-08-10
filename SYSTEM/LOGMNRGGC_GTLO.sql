create table LOGMNRGGC_GTLO
(
    LOGMNR_UID         NUMBER        not null,
    KEYOBJ#            NUMBER        not null,
    LVLCNT             NUMBER        not null,
    BASEOBJ#           NUMBER        not null,
    BASEOBJV#          NUMBER        not null,
    LVL1OBJ#           NUMBER,
    LVL2OBJ#           NUMBER,
    LVL0TYPE#          NUMBER        not null,
    LVL1TYPE#          NUMBER,
    LVL2TYPE#          NUMBER,
    OWNER#             NUMBER,
    OWNERNAME          VARCHAR2(384) not null,
    LVL0NAME           VARCHAR2(384) not null,
    LVL1NAME           VARCHAR2(384),
    LVL2NAME           VARCHAR2(384),
    INTCOLS            NUMBER        not null,
    COLS               NUMBER,
    KERNELCOLS         NUMBER,
    TAB_FLAGS          NUMBER,
    TRIGFLAG           NUMBER,
    ASSOC#             NUMBER,
    OBJ_FLAGS          NUMBER,
    TS#                NUMBER,
    TSNAME             VARCHAR2(90),
    PROPERTY           NUMBER,
    START_SCN          NUMBER        not null,
    DROP_SCN           NUMBER,
    XIDUSN             NUMBER,
    XIDSLT             NUMBER,
    XIDSQN             NUMBER,
    FLAGS              NUMBER,
    LOGMNR_SPARE1      NUMBER,
    LOGMNR_SPARE2      NUMBER,
    LOGMNR_SPARE3      VARCHAR2(1000),
    LOGMNR_SPARE4      DATE,
    LOGMNR_SPARE5      NUMBER,
    LOGMNR_SPARE6      NUMBER,
    LOGMNR_SPARE7      NUMBER,
    LOGMNR_SPARE8      NUMBER,
    LOGMNR_SPARE9      NUMBER,
    PARTTYPE           NUMBER,
    SUBPARTTYPE        NUMBER,
    UNSUPPORTEDCOLS    NUMBER,
    COMPLEXTYPECOLS    NUMBER,
    NTPARENTOBJNUM     NUMBER,
    NTPARENTOBJVERSION NUMBER,
    NTPARENTINTCOLNUM  NUMBER,
    LOGMNRTLOFLAGS     NUMBER,
    LOGMNRMCV          VARCHAR2(30),
    ACDRFLAGS          NUMBER,
    ACDRTSOBJ#         NUMBER,
    ACDRROWTSINTCOL#   NUMBER,
    constraint LOGMNRGGC_GTLO_PK
        primary key (LOGMNR_UID, KEYOBJ#, BASEOBJV#)
)
/

create index LOGMNRGGC_I2GTLO
    on LOGMNRGGC_GTLO (LOGMNR_UID, BASEOBJ#, BASEOBJV#)
/

create index LOGMNRGGC_I3GTLO
    on LOGMNRGGC_GTLO (LOGMNR_UID, DROP_SCN)
/

