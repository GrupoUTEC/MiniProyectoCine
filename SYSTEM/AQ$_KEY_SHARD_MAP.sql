create table AQ$_KEY_SHARD_MAP
(
    QUEUE       NUMBER        not null,
    KEY         VARCHAR2(128) not null,
    SHARD       NUMBER        not null,
    DELAY_SHARD NUMBER        not null,
    constraint AQ$_KEY_SHARD_MAP_PK
        unique (QUEUE, KEY)
)
/

