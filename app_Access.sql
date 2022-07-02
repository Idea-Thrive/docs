create table Access
(
    role          enum ('employer', 'employee') null,
    configuration tinyint(1)                    null,
    created_at    date                          null,
    updated_at    date                          null
);

