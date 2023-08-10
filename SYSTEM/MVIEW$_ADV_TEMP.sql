create table MVIEW$_ADV_TEMP
(
    ID#  NUMBER,
    SEQ# NUMBER,
    TEXT LONG
)
/

comment on table MVIEW$_ADV_TEMP is 'Table for temporary data'
/

create index MVIEW$_ADV_TEMP_IDX_01
    on MVIEW$_ADV_TEMP (ID#, SEQ#)
/

