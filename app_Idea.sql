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