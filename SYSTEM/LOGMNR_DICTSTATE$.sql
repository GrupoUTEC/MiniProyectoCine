create table LOGMNR_DICTSTATE$
(
    LOGMNR_UID   NUMBER(22)
        constraint LOGMNR_DICTSTATE$_PK
            primary key,
    START_SCNBAS NUMBER,
    START_SCNWRP NUMBER,
    END_SCNBAS   NUMBER,
    END_SCNWRP   NUMBER,
    REDO_THREAD  NUMBER,
    RBASQN       NUMBER,
    RBABLK       NUMBER,
    RBABYTE      NUMBER,
    LOGMNR_FLAGS NUMBER(22)
)
/

