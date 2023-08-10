create table MVIEW$_ADV_PARAMETERS
(
    PARAMETER_NAME  VARCHAR2(128) not null
        constraint MVIEW$_ADV_PARAMETERS_PK
            primary key,
    PARAMETER_TYPE  NUMBER        not null,
    STRING_VALUE    VARCHAR2(30),
    DATE_VALUE      DATE,
    NUMERICAL_VALUE NUMBER
)
/

comment on table MVIEW$_ADV_PARAMETERS is 'Summary advisor tuning parameters'
/

