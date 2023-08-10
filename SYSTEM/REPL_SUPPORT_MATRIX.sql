create table REPL_SUPPORT_MATRIX
(
    FEATURE_NAME VARCHAR2(100),
    REASON_CODE  NUMBER,
    BMAP1        NUMBER not null,
    BMAP2        NUMBER not null,
    REPL_PRODUCT NUMBER not null,
    SUPPORT_MODE NUMBER not null,
    MIN_COMPAT   NUMBER,
    MAX_COMPAT   NUMBER,
    constraint REPL_SUPPORT_MATRIX_PK
        primary key (BMAP1, BMAP2, REPL_PRODUCT, SUPPORT_MODE)
)
/

