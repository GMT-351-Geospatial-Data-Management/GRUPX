create table clubs(
clubs_id serial primary key,
    name character varying(255) not null,
    unique(name)
);
create table events(
event_id serial primary key,
    event_details varchar(255) not null,
    event_organizer varchar(255) not null,
    event_date timestamp not null default CURRENT_DATE,
    foreign key (event_organizer) references clubs(name)
);