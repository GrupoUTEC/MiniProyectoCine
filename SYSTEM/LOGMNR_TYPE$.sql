create table LOGMNR_TYPE$
(
    VERSION#        NUMBER,
    VERSION         VARCHAR2(384),
    TVOID           RAW(16),
    TYPECODE        NUMBER,
    PROPERTIES      NUMBER,
    ATTRIBUTES      NUMBER,
    METHODS         NUMBER,
    HIDDENMETHODS   NUMBER,
    SUPERTYPES      NUMBER,
    SUBTYPES        NUMBER,
    EXTERNTYPE      NUMBER,
    EXTERNNAME      VARCHAR2(4000),
    HELPERCLASSNAME VARCHAR2(4000),
    LOCAL_ATTRS     NUMBER,
    LOCAL_METHODS   NUMBER,
    TYPEID          RAW(16),
    ROOTTOID        RAW(16),
    SPARE1          NUMBER,
    SPARE2          NUMBER,
    SPARE3          NUMBER,
    SUPERTOID       RAW(16),
    HASHCODE        RAW(17),
    TOID            RAW(16) not null,
    LOGMNR_UID      NUMBER(22),
    LOGMNR_FLAGS    NUMBER(22),
    constraint LOGMNR_TYPE$_PK
        primary key (LOGMNR_UID, TOID, VERSION#)
)
/

create index LOGMNR_I1TYPE$
    on LOGMNR_TYPE$ (LOGMNR_UID, TOID, VERSION#)
/

