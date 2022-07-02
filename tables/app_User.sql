create table User
(
    id           int auto_increment
        primary key,
    first_name   varchar(20)                   not null,
    last_name    varchar(20)                   not null,
    email        varchar(30)                   not null,
    password     varchar(30)                   not null,
    photo_url    varchar(200)                  null,
    company_id   int                           not null,
    personnel_id int                           not null,
    gender       enum ('male', 'female')       not null,
    role         enum ('employee', 'employer') null,
    updated_at   date                          not null,
    created_at   date                          not null,
    phone_number varchar(11)                   not null
);

INSERT INTO app.User (id, first_name, last_name, email, password, photo_url, company_id, personnel_id, gender, role, updated_at, created_at, phone_number) VALUES (1, 'Amir', 'Hallaji', 'amir.hallaji', '123', 'photo', 1, 14010306, 'male', 'employee', '2022-07-01', '2022-07-01', '09384158428');
INSERT INTO app.User (id, first_name, last_name, email, password, photo_url, company_id, personnel_id, gender, role, updated_at, created_at, phone_number) VALUES (2, 'Amir', 'Hallaji', 'amir.nouri', '123', 'photo', 1, 14010306, 'male', 'employee', '2022-07-01', '2022-07-01', '09384158428');