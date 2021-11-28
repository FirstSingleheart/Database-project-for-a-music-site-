create table if not exists Musical_genre (
	Genre_ID serial primary key,
	Genre_title varchar(80) not null unique,
	Description_genre text not null
);

create table if not exists Executor (
	Executor_ID serial primary key,
	First_name varchar(80) not null,
	Last_name varchar (100) not null,
	Biography text not null	
);

create table if not exists Musical_genre_Executor (
	Id serial primary key,
	Genre_ID integer references Musical_genre (Genre_ID),
	Executor_ID integer references Executor (Executor_ID)
);

create table if not exists Album (
	Album_ID serial primary key,
	Title varchar(200) not null,
	Year_of_issue integer not null
);


create table if not exists Joint_album (
	Id serial primary key,
	Executor_ID integer references Executor (Executor_ID),
	Album_ID integer references Album (Album_ID)
);

create table if not exists Track (
	Track_ID serial primary key,
	Album_ID integer references Album (Album_ID),
	Track_title varchar(200) not null,
	duration integer not null	
);

create table if not exists Collection (
	Collection_ID serial primary key,
	Title varchar(200) not null,
	Year_of_issue integer not null
);

create table if not exists Collection_Tracks (
	Id serial primary key,
	Collection_ID integer references Collection (Collection_ID),
	Track_ID integer references Track (Track_ID)
);
