create table LOGMNR_PROFILE_PLSQL_STATS$
(
    PKGOWNER         VARCHAR2(384) not null,
    PKGNAME          VARCHAR2(384) not null,
    NAME             NUMBER        not null,
    PRAGMAOP         NUMBER,
    OPNUM            NUMBER,
    TLSBYUNSUPPOPNUM NUMBER,
    OGGUNSUPPOPNUM   NUMBER,
    REDOSIZE         NUMBER,
    REDORATE         NUMBER,
    SPARE1           VARCHAR2(384),
    SPARE2           VARCHAR2(384),
    SPARE3           NUMBER,
    SPARE4           NUMBER,
    SPARE5           NUMBER,
    SPARE6           NUMBER,
    constraint LOGMNR_PROFILE_PLSQL$_PK
        primary key (PKGOWNER, PKGNAME, NAME)
)
/

