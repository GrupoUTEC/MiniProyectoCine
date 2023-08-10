create table LOGMNR_KOPM$
(
    LENGTH       NUMBER,
    METADATA     RAW(255),
    NAME         VARCHAR2(384) not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_KOPM$_PK
        primary key (LOGMNR_UID, NAME)
)
/

create index LOGMNR_I1KOPM$
    on LOGMNR_KOPM$ (LOGMNR_UID, NAME)
/

