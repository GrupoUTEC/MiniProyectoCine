create table HELP
(
    TOPIC VARCHAR2(50) not null,
    SEQ   NUMBER       not null,
    INFO  VARCHAR2(80),
    constraint HELP_TOPIC_SEQ
        primary key (TOPIC, SEQ)
)
/

