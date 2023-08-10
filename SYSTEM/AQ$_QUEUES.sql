create table AQ$_QUEUES
(
    OID              RAW(16)       not null
        constraint AQ$_QUEUES_PRIMARY
            primary key,
    EVENTID          NUMBER        not null,
    NAME             VARCHAR2(128) not null,
    TABLE_OBJNO      NUMBER        not null,
    USAGE            NUMBER        not null,
    ENABLE_FLAG      NUMBER        not null,
    MAX_RETRIES      NUMBER,
    RETRY_DELAY      NUMBER,
    PROPERTIES       NUMBER,
    RET_TIME         NUMBER,
    QUEUE_COMMENT    VARCHAR2(2000),
    SUBSCRIBERS      SYS.AQ$_SUBSCRIBERS,
    MEMORY_THRESHOLD NUMBER,
    SERVICE_NAME     VARCHAR2(64),
    NETWORK_NAME     VARCHAR2(256),
    SUB_OID          RAW(16),
    SHARDED          NUMBER,
    BASE_QUEUE       NUMBER default 0,
    constraint AQ$_QUEUES_CHECK
        unique (NAME, TABLE_OBJNO)
)
/

create index I1_QUEUES
    on AQ$_QUEUES (NAME, EVENTID, TABLE_OBJNO)
/

