create table Idea
(
    id          int auto_increment
        primary key,
    is_approved tinyint(1) default 0 not null,
    title       varchar(255)         not null,
    category_id int                  not null,
    creator_id  int                  not null,
    company_id  int                  null,
    created_at  date                 not null,
    updated_at  date                 not null,
    description text                 not null,
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

INSERT INTO app.Idea (id, is_approved, title, category_id, creator_id, company_id, created_at, updated_at, description) VALUES (3, 1, 'idea title3', 1, 1, 1, '2022-07-01', '2022-07-01', 'idea description');
INSERT INTO app.Idea (id, is_approved, title, category_id, creator_id, company_id, created_at, updated_at, description) VALUES (4, 1, 'idea title4', 1, 1, 1, '2022-07-01', '2022-07-01', 'idea description');
INSERT INTO app.Idea (id, is_approved, title, category_id, creator_id, company_id, created_at, updated_at, description) VALUES (6, 0, 'idea title5', 3, 1, 1, '2022-07-01', '2022-07-01', 'idea description');
INSERT INTO app.Idea (id, is_approved, title, category_id, creator_id, company_id, created_at, updated_at, description) VALUES (8, 0, 'asdas', 3, 3, 1, '2022-07-02', '2022-07-02', 'dasdasdas');
INSERT INTO app.Idea (id, is_approved, title, category_id, creator_id, company_id, created_at, updated_at, description) VALUES (9, 0, 'asdas', 3, 3, 1, '2022-07-02', '2022-07-02', 'dasdasdas');
INSERT INTO app.Idea (id, is_approved, title, category_id, creator_id, company_id, created_at, updated_at, description) VALUES (10, 0, 'sdadasd', 3, 3, 1, '2022-07-02', '2022-07-02', 'dsadsadasd');
INSERT INTO app.Idea (id, is_approved, title, category_id, creator_id, company_id, created_at, updated_at, description) VALUES (11, 0, 'ایده جدید', 3, 3, 1, '2022-07-02', '2022-07-02', 'توضیح');
INSERT INTO app.Idea (id, is_approved, title, category_id, creator_id, company_id, created_at, updated_at, description) VALUES (12, 0, 'das', 1, 3, 1, '2022-07-02', '2022-07-02', 'dasdsa');