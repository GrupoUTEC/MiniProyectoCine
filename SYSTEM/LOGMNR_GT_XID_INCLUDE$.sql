create global temporary table LOGMNR_GT_XID_INCLUDE$
(
    XIDUSN   NUMBER,
    XIDSLT   NUMBER,
    XIDSQN   NUMBER,
    SPARE1   NUMBER,
    SPARE2   NUMBER,
    SPARE3   VARCHAR2(4000),
    PDBID    NUMBER,
    PDB_NAME VARCHAR2(390)
)
    on commit preserve rows
/

