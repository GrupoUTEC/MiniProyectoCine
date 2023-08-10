create table LOGMNR_TS$
(
    TS#          NUMBER(22),
    NAME         VARCHAR2(90),
    OWNER#       NUMBER(22),
    BLOCKSIZE    NUMBER(22) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    START_SCNBAS NUMBER,
    START_SCNWRP NUMBER,
    constraint LOGMNR_TS$_PK
        primary key (LOGMNR_UID, TS#)
)
/

create index LOGMNR_I1TS$
    on LOGMNR_TS$ (LOGMNR_UID, TS#)
/

