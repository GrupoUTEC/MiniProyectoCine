create table LOGMNR_USER$
(
    USER#        NUMBER(22),
    NAME         VARCHAR2(384) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    SPARE1       NUMBER,
    constraint LOGMNR_USER$_PK
        primary key (LOGMNR_UID, USER#)
)
/

create index LOGMNR_I1USER$
    on LOGMNR_USER$ (LOGMNR_UID, USER#)
/

create index LOGMNR_I2USER$
    on LOGMNR_USER$ (LOGMNR_UID, NAME)
/

