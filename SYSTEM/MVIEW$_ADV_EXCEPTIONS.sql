create table MVIEW$_ADV_EXCEPTIONS
(
    RUNID#         NUMBER
        constraint MVIEW$_ADV_EXCEPTION_FK
            references MVIEW$_ADV_LOG,
    OWNER          VARCHAR2(128),
    TABLE_NAME     VARCHAR2(128),
    DIMENSION_NAME VARCHAR2(128),
    RELATIONSHIP   VARCHAR2(11),
    BAD_ROWID      ROWID
)
/

comment on table MVIEW$_ADV_EXCEPTIONS is 'Output table for dimension validations'
/

