create table if not exists Musical_genre (
	Genre_ID serial primary key,
	Genre_title varchar(30) not null unique,
	Description_genre text not null
);

create table if not exists Executor (
	Executor_ID serial primary key,
	First_name varchar(100) not null,
	Last_name varchar (100) not null,
	Byography text not null,
	Musical_genre_id integer references musical_genre (Genre_ID)
);

create table if not exists Albums (
	Albums_ID serial primary key,
	Title varchar(100) not null unique,
	Year_of_issue integer not null,
	Executor_ID integer references Executor (Executor_ID)
);

create table if not exists Tracks (
	Track_ID serial primary key,
	Track_title varchar(200) not null unique,
	duration numeric not null,
	Albums_ID integer references Albums (Albums_ID)
);
