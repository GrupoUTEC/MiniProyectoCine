create table LOGMNR_SUBCOLTYPE$
(
    INTCOL#      NUMBER  not null,
    TOID         RAW(16) not null,
    VERSION#     NUMBER  not null,
    INTCOLS      NUMBER,
    INTCOL#S     RAW(2000),
    FLAGS        NUMBER,
    SYNOBJ#      NUMBER,
    OBJ#         NUMBER  not null,
    LOGMNR_UID   NUMBER(22),
    LOGMNR_FLAGS NUMBER(22),
    constraint LOGMNR_SUBCOLTYPE$_PK
        primary key (LOGMNR_UID, OBJ#, INTCOL#, TOID)
)
/

create index LOGMNR_I1SUBCOLTYPE$
    on LOGMNR_SUBCOLTYPE$ (LOGMNR_UID, OBJ#, INTCOL#, TOID)
/

