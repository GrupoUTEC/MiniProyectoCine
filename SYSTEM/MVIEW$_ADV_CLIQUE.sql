create table MVIEW$_ADV_CLIQUE
(
    CLIQUEID#    NUMBER   not null
        constraint MVIEW$_ADV_CLIQUE_PK
            primary key,
    RUNID#       NUMBER   not null
        constraint MVIEW$_ADV_CLIQUE_FK
            references MVIEW$_ADV_LOG,
    CLIQUEDESLEN NUMBER   not null,
    CLIQUEDES    LONG RAW not null,
    HASHVALUE    NUMBER   not null,
    FREQUENCY    NUMBER   not null,
    BYTECOST     NUMBER   not null,
    ROWSIZE      NUMBER   not null,
    NUMROWS      NUMBER   not null
)
/

comment on table MVIEW$_ADV_CLIQUE is 'Table for storing canonical form of Clique queries'
/

