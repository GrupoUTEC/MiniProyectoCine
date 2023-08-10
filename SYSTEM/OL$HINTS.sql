create global temporary table OL$HINTS
(
    OL_NAME         VARCHAR2(128),
    HINT#           NUMBER,
    CATEGORY        VARCHAR2(128),
    HINT_TYPE       NUMBER,
    HINT_TEXT       VARCHAR2(512),
    STAGE#          NUMBER,
    NODE#           NUMBER,
    TABLE_NAME      VARCHAR2(128),
    TABLE_TIN       NUMBER,
    TABLE_POS       NUMBER,
    REF_ID          NUMBER,
    USER_TABLE_NAME VARCHAR2(260),
    COST            FLOAT,
    CARDINALITY     FLOAT,
    BYTES           FLOAT,
    HINT_TEXTOFF    NUMBER,
    HINT_TEXTLEN    NUMBER,
    JOIN_PRED       VARCHAR2(2000),
    SPARE1          NUMBER,
    SPARE2          NUMBER,
    HINT_STRING     CLOB
)
    on commit preserve rows
/

create unique index OL$HNT_NUM
    on OL$HINTS (OL_NAME, HINT#)
/

