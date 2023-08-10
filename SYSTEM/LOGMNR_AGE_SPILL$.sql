create table LOGMNR_AGE_SPILL$
(
    SESSION#   NUMBER not null,
    XIDUSN     NUMBER not null,
    XIDSLT     NUMBER not null,
    XIDSQN     NUMBER not null,
    CHUNK      NUMBER not null,
    SEQUENCE#  NUMBER not null,
    OFFSET     NUMBER,
    SPILL_DATA BLOB,
    SPARE1     NUMBER,
    SPARE2     NUMBER,
    PDBID      NUMBER not null,
    constraint LOGMNR_AGE_SPILL$_PK
        primary key (SESSION#, PDBID, XIDUSN, XIDSLT, XIDSQN, CHUNK, SEQUENCE#)
)
/

