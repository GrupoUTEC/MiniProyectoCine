create table AQ$_INTERNET_AGENT_PRIVS
(
    AGENT_NAME  VARCHAR2(512) not null
        constraint AGENT_MUST_BE_CREATED
            references AQ$_INTERNET_AGENTS
                on delete cascade,
    DB_USERNAME VARCHAR2(128) not null,
    constraint UNQ_PAIRS
        unique (AGENT_NAME, DB_USERNAME)
)
/

