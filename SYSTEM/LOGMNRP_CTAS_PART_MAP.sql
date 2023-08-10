create table LOGMNRP_CTAS_PART_MAP
(
    LOGMNR_UID NUMBER not null,
    BASEOBJ#   NUMBER not null,
    BASEOBJV#  NUMBER not null,
    KEYOBJ#    NUMBER not null,
    PART#      NUMBER not null,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    SPARE3     VARCHAR2(1000),
    constraint LOGMNRP_CTAS_PART_MAP_PK
        primary key (LOGMNR_UID, BASEOBJV#, KEYOBJ#)
)
/

create index LOGMNRP_CTAS_PART_MAP_I
    on LOGMNRP_CTAS_PART_MAP (LOGMNR_UID, BASEOBJ#, BASEOBJV#, PART#)
/

