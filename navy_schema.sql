create table fleet (
    id char(3) not null primary key,
    [name] varchar(50)
);

create table ship (
    id char(3) not null primary key,
    [name] varchar(50),
    date_finished varchar(10),
    fleet_id char(3) not null,

    foreign key (fleet_id) references fleet(id)
);

create table sailor (
    id char(4) not null primary key,
    ship_id char(3) not null,
    birth_date varchar(10),
    duty varchar(50),
    rank varchar(50),
    duty_start_date varchar(10),
    duty_end_date varchar(10),

    foreign key (ship_id) references ship(id)
);


