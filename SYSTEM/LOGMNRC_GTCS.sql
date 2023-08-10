create table LOGMNRC_GTCS
(
    LOGMNR_UID                  NUMBER        not null,
    OBJ#                        NUMBER        not null,
    OBJV#                       NUMBER        not null,
    SEGCOL#                     NUMBER        not null,
    INTCOL#                     NUMBER        not null,
    COLNAME                     VARCHAR2(384) not null,
    TYPE#                       NUMBER        not null,
    LENGTH                      NUMBER,
    PRECISION                   NUMBER,
    SCALE                       NUMBER,
    INTERVAL_LEADING_PRECISION  NUMBER,
    INTERVAL_TRAILING_PRECISION NUMBER,
    PROPERTY                    NUMBER,
    TOID                        RAW(16),
    CHARSETID                   NUMBER,
    CHARSETFORM                 NUMBER,
    TYPENAME                    VARCHAR2(384),
    FQCOLNAME                   VARCHAR2(4000),
    NUMINTCOLS                  NUMBER,
    NUMATTRS                    NUMBER,
    ADTORDER                    NUMBER,
    LOGMNR_SPARE1               NUMBER,
    LOGMNR_SPARE2               NUMBER,
    LOGMNR_SPARE3               VARCHAR2(1000),
    LOGMNR_SPARE4               DATE,
    LOGMNR_SPARE5               NUMBER,
    LOGMNR_SPARE6               NUMBER,
    LOGMNR_SPARE7               NUMBER,
    LOGMNR_SPARE8               NUMBER,
    LOGMNR_SPARE9               NUMBER,
    COL#                        NUMBER,
    XTYPESCHEMANAME             VARCHAR2(384),
    XTYPENAME                   VARCHAR2(4000),
    XFQCOLNAME                  VARCHAR2(4000),
    XTOPINTCOL                  NUMBER,
    XREFFEDTABLEOBJN            NUMBER,
    XREFFEDTABLEOBJV            NUMBER,
    XCOLTYPEFLAGS               NUMBER,
    XOPQTYPETYPE                NUMBER,
    XOPQTYPEFLAGS               NUMBER,
    XOPQLOBINTCOL               NUMBER,
    XOPQOBJINTCOL               NUMBER,
    XXMLINTCOL                  NUMBER,
    EAOWNER#                    NUMBER,
    EAMKEYID                    VARCHAR2(192),
    EAENCALG                    NUMBER,
    EAINTALG                    NUMBER,
    EACOLKLC                    RAW(2000),
    EAKLCLEN                    NUMBER,
    EAFLAGS                     NUMBER,
    LOGMNRDERIVEDFLAGS          NUMBER,
    COLLID                      NUMBER,
    COLLINTCOL#                 NUMBER,
    ACDRRESCOL#                 NUMBER,
    constraint LOGMNRC_GTCS_PK
        primary key (LOGMNR_UID, OBJ#, OBJV#, INTCOL#)
)
/

create index LOGMNRC_I2GTCS
    on LOGMNRC_GTCS (LOGMNR_UID, OBJ#, OBJV#, SEGCOL#, INTCOL#)
/

