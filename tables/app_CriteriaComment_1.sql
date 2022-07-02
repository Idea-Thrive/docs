create table CriteriaComment
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

INSERT INTO app.CriteriaComment (id, criteria_id, comment_id, score) VALUES (2, 1, 2, 4);