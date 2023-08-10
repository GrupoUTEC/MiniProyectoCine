create global temporary table OL$NODES
(
    OL_NAME      VARCHAR2(128),
    CATEGORY     VARCHAR2(128),
    NODE_ID      NUMBER,
    PARENT_ID    NUMBER,
    NODE_TYPE    NUMBER,
    NODE_TEXTLEN NUMBER,
    NODE_TEXTOFF NUMBER,
    NODE_NAME    VARCHAR2(64)
)
    on commit preserve rows
/

