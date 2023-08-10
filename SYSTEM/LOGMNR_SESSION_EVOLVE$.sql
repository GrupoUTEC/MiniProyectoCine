create table LOGMNR_SESSION_EVOLVE$
(
    BRANCH_LEVEL         NUMBER,
    SESSION#             NUMBER not null,
    DB_ID                NUMBER not null,
    RESET_SCN            NUMBER not null,
    RESET_TIMESTAMP      NUMBER not null,
    PREV_RESET_SCN       NUMBER,
    PREV_RESET_TIMESTAMP NUMBER,
    STATUS               NUMBER,
    SPARE1               NUMBER,
    SPARE2               NUMBER,
    SPARE3               NUMBER,
    SPARE4               DATE,
    constraint LOGMNR_SESSION_EVOLVE$_PK
        primary key (SESSION#, DB_ID, RESET_SCN, RESET_TIMESTAMP)
)
/

