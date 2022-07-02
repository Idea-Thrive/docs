create table Company
(
    id                int auto_increment
        primary key,
    name              varchar(60)  not null,
    logo_url          varchar(200) not null,
    owner_national_id varchar(10)  not null,
    owner_first_name  varchar(20)  not null,
    owner_last_name   varchar(20)  not null,
    created_at        date         not null,
    updated_at        date         not null
);

INSERT INTO app.Company (id, name, logo_url, owner_national_id, owner_first_name, owner_last_name, created_at, updated_at) VALUES (1, 'Luxury VPN', 'logo', '6190099998', 'Amir', 'Hallaji', '2022-07-01', '2022-07-01');