create table LOGMNR_PARAMETER$
(
    SESSION# NUMBER        not null,
    NAME     VARCHAR2(384) not null,
    VALUE    VARCHAR2(2000),
    TYPE     NUMBER,
    SCN      NUMBER,
    SPARE1   NUMBER,
    SPARE2   NUMBER,
    SPARE3   VARCHAR2(2000)
)
/

create index LOGMNR_PARAMETER_INDX
    on LOGMNR_PARAMETER$ (SESSION#, NAME)
/

