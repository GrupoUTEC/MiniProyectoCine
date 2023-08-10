create table LOGMNR_CON$
(
    OWNER#       NUMBER        not null,
    NAME         VARCHAR2(384) not null,
    CON#         NUMBER        not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    START_SCNBAS NUMBER,
    START_SCNWRP NUMBER,
    constraint LOGMNR_CON$_PK
        primary key (LOGMNR_UID, CON#)
)
/

create index LOGMNR_I1CON$
    on LOGMNR_CON$ (LOGMNR_UID, CON#)
/

