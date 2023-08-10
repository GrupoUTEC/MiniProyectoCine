create table AQ$_QUEUE_TABLES
(
    SCHEMA        VARCHAR2(128) not null,
    NAME          VARCHAR2(128) not null,
    UDATA_TYPE    NUMBER        not null,
    OBJNO         NUMBER        not null
        constraint AQ$_QUEUE_TABLES_PRIMARY
            primary key,
    FLAGS         NUMBER        not null,
    SORT_COLS     NUMBER        not null,
    TIMEZONE      VARCHAR2(64),
    TABLE_COMMENT VARCHAR2(2000)
)
/

create index I1_QUEUE_TABLES
    on AQ$_QUEUE_TABLES (OBJNO, SCHEMA, FLAGS)
/

