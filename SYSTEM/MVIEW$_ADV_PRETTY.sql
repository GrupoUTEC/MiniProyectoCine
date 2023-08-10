create table MVIEW$_ADV_PRETTY
(
    QUERYID# NUMBER,
    SQL_TEXT LONG
)
/

comment on table MVIEW$_ADV_PRETTY is 'Table for sql parsing'
/

create index MVIEW$_ADV_PRETTY_IDX_01
    on MVIEW$_ADV_PRETTY (QUERYID#)
/

