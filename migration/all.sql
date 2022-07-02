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


create table Access
(
    role          enum ('employer', 'employee') null,
    configuration tinyint(1)                    null,
    created_at    date                          null,
    updated_at    date                          null
);


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


create table Criteria
(
    id          int auto_increment
        primary key,
    category_id int          null,
    name        varchar(255) null,
    constraint Criteria_Category_id_fk
        foreign key (category_id) references Category (id)
);

create table Idea
(
    id          int auto_increment
        primary key,
    description text         not null,
    title       varchar(255) not null,
    category_id int          not null,
    creator_id  int          not null,
    company_id  int          null,
    created_at  date         not null,
    updated_at  date         not null,
    constraint Idea_Category_id_fk
        foreign key (category_id) references Category (id),
    constraint Idea_ibfk_1
        foreign key (creator_id) references User (id),
    constraint Idea_ibfk_2
        foreign key (company_id) references Company (id)
);

create index company_id
    on Idea (company_id);

create index creator_id
    on Idea (creator_id);

INSERT INTO app.Idea (id, description, title, category_id, creator_id, company_id, created_at, updated_at) VALUES (3, 'idea description', 'idea title3', 1, 1, 1, '2022-07-01', '2022-07-01');
INSERT INTO app.Idea (id, description, title, category_id, creator_id, company_id, created_at, updated_at) VALUES (4, 'idea description', 'idea title4', 1, 1, 1, '2022-07-01', '2022-07-01');
INSERT INTO app.Idea (id, description, title, category_id, creator_id, company_id, created_at, updated_at) VALUES (6, 'idea description', 'idea title5', 3, 1, 1, '2022-07-01', '2022-07-01');



create table Comment
(
    id          int auto_increment
        primary key,
    user_id     int           not null,
    company_id  int           not null,
    idea_id     int           not null,
    score       int default 0 not null,
    description text          null,
    created_at  date          not null,
    updated_at  date          not null,
    constraint Comment_ibfk_1
        foreign key (user_id) references User (id),
    constraint Comment_ibfk_2
        foreign key (company_id) references Company (id),
    constraint idea_id
        foreign key (idea_id) references Idea (id)
);

create index commenter_id
    on Comment (user_id);

create index company_id
    on Comment (company_id);


create table Criteria_Comment
(
    id          int auto_increment
        primary key,
    criteria_id int null,
    comment_id  int null,
    score       int null,
    constraint Criteria_Comment_Comment_id_fk
        foreign key (comment_id) references Comment (id),
    constraint Criteria_Comment_Criteria_id_fk
        foreign key (criteria_id) references Criteria (id)
);

