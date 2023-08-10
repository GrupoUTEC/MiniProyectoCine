create global temporary table OL$
(
    OL_NAME     VARCHAR2(128),
    SQL_TEXT    LONG,
    TEXTLEN     NUMBER,
    SIGNATURE   RAW(16),
    HASH_VALUE  NUMBER,
    HASH_VALUE2 NUMBER,
    CATEGORY    VARCHAR2(128),
    VERSION     VARCHAR2(64),
    CREATOR     VARCHAR2(128),
    TIMESTAMP   DATE,
    FLAGS       NUMBER,
    HINTCOUNT   NUMBER,
    SPARE1      NUMBER,
    SPARE2      VARCHAR2(1000)
)
    on commit preserve rows
/

create unique index OL$NAME
    on OL$ (OL_NAME)
/

create unique index OL$SIGNATURE
    on OL$ (SIGNATURE, CATEGORY)
/

