create global temporary table LOGMNRT_MDDL$
(
    SOURCE_OBJ#  NUMBER not null,
    SOURCE_ROWID ROWID  not null,
    DEST_ROWID   ROWID  not null,
    constraint LOGMNRT_MDDL$_PK
        primary key (SOURCE_OBJ#, SOURCE_ROWID)
)
    on commit delete rows
/

