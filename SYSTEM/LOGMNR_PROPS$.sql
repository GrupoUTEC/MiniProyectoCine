create table LOGMNR_PROPS$
(
    VALUE$       VARCHAR2(4000),
    COMMENT$     VARCHAR2(4000),
    NAME         VARCHAR2(384) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_PROPS$_PK
        primary key (LOGMNR_UID, NAME)
)
/

create index LOGMNR_I1PROPS$
    on LOGMNR_PROPS$ (LOGMNR_UID, NAME)
/

