create table ROLLING$DIRECTIVES
(
    DIRECTID    NUMBER,
    PHASE       NUMBER,
    TASKID      NUMBER,
    FEATURE     VARCHAR2(32),
    DESCRIPTION VARCHAR2(256),
    TARGET      NUMBER,
    FLAGS       VARCHAR2(64),
    OPCODE      NUMBER,
    P1          VARCHAR2(256),
    P2          VARCHAR2(256),
    P3          VARCHAR2(256),
    SPARE1      NUMBER,
    SPARE2      NUMBER,
    SPARE3      VARCHAR2(256)
)
/

