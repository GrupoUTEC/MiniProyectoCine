create table AQ$_INTERNET_AGENTS
(
    AGENT_NAME VARCHAR2(512) not null
        primary key,
    PROTOCOL   NUMBER        not null,
    SPARE1     VARCHAR2(128)
)
/

