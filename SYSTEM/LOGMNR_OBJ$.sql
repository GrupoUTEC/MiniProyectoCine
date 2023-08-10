create table LOGMNR_OBJ$
(
    OBJV#        NUMBER(22),
    OWNER#       NUMBER(22),
    NAME         VARCHAR2(384),
    NAMESPACE    NUMBER(22),
    SUBNAME      VARCHAR2(384),
    TYPE#        NUMBER(22),
    OID$         RAW(16),
    REMOTEOWNER  VARCHAR2(384),
    LINKNAME     VARCHAR2(384),
    FLAGS        NUMBER(22),
    SPARE3       NUMBER(22),
    STIME        DATE,
    OBJ#         NUMBER(22) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    START_SCNBAS NUMBER,
    START_SCNWRP NUMBER,
    constraint LOGMNR_OBJ$_PK
        primary key (LOGMNR_UID, OBJ#)
)
/

create index LOGMNR_I1OBJ$
    on LOGMNR_OBJ$ (LOGMNR_UID, OBJ#)
/

create index LOGMNR_I2OBJ$
    on LOGMNR_OBJ$ (LOGMNR_UID, OID$)
/

create index LOGMNR_I3OBJ$
    on LOGMNR_OBJ$ (LOGMNR_UID, NAME)
/

