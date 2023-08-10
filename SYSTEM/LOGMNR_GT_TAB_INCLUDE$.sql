create global temporary table LOGMNR_GT_TAB_INCLUDE$
(
    SCHEMA_NAME VARCHAR2(390),
    TABLE_NAME  VARCHAR2(390),
    PDB_NAME    VARCHAR2(390),
    SPARE1      NUMBER,
    SPARE2      NUMBER,
    SPARE3      VARCHAR2(4000)
)
    on commit preserve rows
/

