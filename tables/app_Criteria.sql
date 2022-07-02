create table Criteria
(
    id          int auto_increment
        primary key,
    category_id int          null,
    name        varchar(255) null,
    constraint Criteria_Category_id_fk
        foreign key (category_id) references Category (id)
);

