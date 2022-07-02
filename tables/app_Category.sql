create table Category
(
    id         int auto_increment
        primary key,
    company_id int          null,
    name       varchar(255) null,
    color      text         null,
    created_at date         null,
    updated_at date         null,
    constraint Category_ibfk_1
        foreign key (company_id) references Company (id)
);

create index Category
    on Category (company_id);

INSERT INTO app.Category (id, company_id, name, color, created_at, updated_at) VALUES (1, 1, 'beauty', 'blue', '2022-07-01', '2022-07-01');
INSERT INTO app.Category (id, company_id, name, color, created_at, updated_at) VALUES (3, 1, 'quality', 'red', '2022-07-01', '2022-07-01');