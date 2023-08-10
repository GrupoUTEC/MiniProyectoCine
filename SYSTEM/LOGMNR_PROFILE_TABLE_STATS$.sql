create table LOGMNR_PROFILE_TABLE_STATS$
(
    OWNER            VARCHAR2(384),
    NAME             VARCHAR2(384),
    OBJID            NUMBER not null
        constraint LOGMNR_PROFILE_TABLE$_PK
            primary key,
    OPNUM            NUMBER,
    TLSBYUNSUPPOPNUM NUMBER,
    OGGUNSUPPOPNUM   NUMBER,
    OGGFETCHOPNUM    NUMBER,
    OGGPLSQLOPNUM    NUMBER,
    PARTNUM          NUMBER,
    INSERTNUM        NUMBER,
    UPDATENUM        NUMBER,
    DELETENUM        NUMBER,
    DDLNUM           NUMBER,
    PROPERTY1        NUMBER,
    PROPERTY2        NUMBER,
    PARTITIONATTR    NUMBER,
    REDOSIZE         NUMBER,
    MAXLOBSIZE       NUMBER,
    REDORATE         NUMBER,
    SPARE1           VARCHAR2(384),
    SPARE2           VARCHAR2(384),
    SPARE3           NUMBER,
    SPARE4           NUMBER,
    SPARE5           NUMBER,
    SPARE6           NUMBER
)
/

