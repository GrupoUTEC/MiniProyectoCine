create table LOGSTDBY$EDS_TABLES
(
    OWNER               VARCHAR2(128) not null,
    TABLE_NAME          VARCHAR2(128) not null,
    SHADOW_TABLE_NAME   VARCHAR2(128),
    BASE_TRIGGER_NAME   VARCHAR2(128),
    SHADOW_TRIGGER_NAME VARCHAR2(128),
    DBLINK              VARCHAR2(255),
    FLAGS               NUMBER,
    STATE               VARCHAR2(255),
    OBJV                NUMBER,
    OBJ#                NUMBER,
    SOBJ#               NUMBER,
    CTIME               TIMESTAMP(6),
    SPARE1              NUMBER,
    SPARE2              VARCHAR2(255),
    SPARE3              NUMBER,
    MVIEW_NAME          VARCHAR2(128),
    MVIEW_LOG_NAME      VARCHAR2(128),
    MVIEW_TRIGGER_NAME  VARCHAR2(128),
    constraint LOGSTDBY$EDS_TABLES_PKEY
        primary key (OWNER, TABLE_NAME)
)
/

