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

INSERT INTO app.Comment (id, user_id, company_id, idea_id, score, description, created_at, updated_at) VALUES (2, 1, 1, 3, 1, 'comment1', '2022-07-02', '2022-07-02');