create table LOGSTDBY$SKIP_SUPPORT
(
    ACTION NUMBER        not null,
    NAME   VARCHAR2(128) not null,
    NAME2  VARCHAR2(128),
    NAME3  VARCHAR2(128),
    NAME4  VARCHAR2(128),
    NAME5  VARCHAR2(128),
    REG    NUMBER,
    SPARE1 NUMBER,
    SPARE2 NUMBER,
    SPARE3 VARCHAR2(2000)
)
/

create index LOGSTDBY$SKIP_IND
    on LOGSTDBY$SKIP_SUPPORT (NAME, ACTION)
/

