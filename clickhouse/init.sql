CREATE TABLE default.syslog(
    application String,
    hostname String,
    message String,
    mid String,
    pid String,
    priority Int16,
    raw String,
    timestamp DateTime('UTC'),
    version Int16
) ENGINE = MergeTree()
    PARTITION BY toYYYYMMDD(timestamp)
    ORDER BY timestamp
    TTL timestamp + toIntervalMonth(1);


ALTER TABLE syslog DELETE where raw is not null