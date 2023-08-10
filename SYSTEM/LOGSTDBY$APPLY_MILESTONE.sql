create table LOGSTDBY$APPLY_MILESTONE
(
    SESSION_ID               NUMBER             not null,
    COMMIT_SCN               NUMBER             not null,
    COMMIT_TIME              DATE,
    SYNCH_SCN                NUMBER             not null,
    EPOCH                    NUMBER             not null,
    PROCESSED_SCN            NUMBER             not null,
    PROCESSED_TIME           DATE,
    FETCHLWM_SCN             NUMBER default (0) not null,
    SPARE1                   NUMBER,
    SPARE2                   NUMBER,
    SPARE3                   VARCHAR2(2000),
    FLAGS                    NUMBER,
    LWM_UPD_TIME             DATE,
    SPARE4                   NUMBER,
    SPARE5                   NUMBER,
    SPARE6                   NUMBER,
    SPARE7                   DATE,
    PTO_RECOVERY_SCN         NUMBER,
    PTO_RECOVERY_INCARNATION NUMBER
)
/

