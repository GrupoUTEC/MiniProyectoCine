create table LOGMNRC_GSII
(
    LOGMNR_UID    NUMBER not null,
    OBJ#          NUMBER not null,
    BO#           NUMBER not null,
    INDTYPE#      NUMBER not null,
    DROP_SCN      NUMBER,
    LOGMNR_SPARE1 NUMBER,
    LOGMNR_SPARE2 NUMBER,
    LOGMNR_SPARE3 VARCHAR2(1000),
    LOGMNR_SPARE4 DATE,
    constraint LOGMNRC_GSII_PK
        primary key (LOGMNR_UID, OBJ#)
)
/

