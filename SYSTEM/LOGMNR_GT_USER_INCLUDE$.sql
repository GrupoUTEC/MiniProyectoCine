create global temporary table LOGMNR_GT_USER_INCLUDE$
(
    USER_NAME VARCHAR2(390),
    USER_TYPE NUMBER,
    PDB_NAME  VARCHAR2(390),
    SPARE1    NUMBER,
    SPARE2    NUMBER,
    SPARE3    VARCHAR2(4000)
)
    on commit preserve rows
/

