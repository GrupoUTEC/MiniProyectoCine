create table LOGMNRC_DBNAME_UID_MAP
(
    GLOBAL_NAME VARCHAR2(384) not null,
    LOGMNR_UID  NUMBER,
    FLAGS       NUMBER,
    PDB_NAME    VARCHAR2(384),
    LOGMNR_MDH  NUMBER        not null,
    constraint LOGMNRC_DBNAME_UID_MAP_PK
        primary key (GLOBAL_NAME, LOGMNR_MDH)
)
/

