create table LOGMNR_TAB$
(
    TS#              NUMBER(22),
    COLS             NUMBER(22),
    PROPERTY         NUMBER,
    INTCOLS          NUMBER(22),
    KERNELCOLS       NUMBER(22),
    BOBJ#            NUMBER(22),
    TRIGFLAG         NUMBER(22),
    FLAGS            NUMBER(22),
    OBJ#             NUMBER(22) not null,
    LOGMNR_UID       NUMBER(22),
    LOGMNR_FLAGS     NUMBER(22),
    ACDRFLAGS        NUMBER,
    ACDRTSOBJ#       NUMBER,
    ACDRROWTSINTCOL# NUMBER,
    constraint LOGMNR_TAB$_PK
        primary key (LOGMNR_UID, OBJ#)
)
/

create index LOGMNR_I1TAB$
    on LOGMNR_TAB$ (LOGMNR_UID, OBJ#)
/

create index LOGMNR_I2TAB$
    on LOGMNR_TAB$ (LOGMNR_UID, BOBJ#)
/

