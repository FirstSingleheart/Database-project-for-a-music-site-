create table if not exists Musical genre (
	Genre_ID serial primary key,
	Genre_title varchar(30) not null unique,
	Description_genre text not null
);

create table if not exists Musical genre/Executor (
	Genre integer references Musical genre (Genre_ID),
	Executor integer references Executor (Executor_ID)
);

create table if not exists Executor (
	Executor_ID serial primary key,
	First_name varchar(100) not null,
	Last_name varchar (100) not null,
	Byography text not null,
	Musical_genre integer references Musical genre (Genre_ID)
	
);

create table if not exists Joint album (
	Executor integer references Executor (Executor_ID),
	Album integer references Album (Album_ID)
);

create table if not exists Album (
	Album_ID serial primary key,
	Title varchar(100) not null unique,
	Year_of_issue integer not null
);

create table if not exists Track (
	Album integer references Album (Album_ID),
	Track_ID serial primary key,
	Track_title varchar(200) not null unique,
	duration numeric not null	
);

create table if not exists Collection (
	Collection_ID serial primary key,
	Title varchar(100) not null unique,
	Year_of_issue integer not null,	
	Track integer references Track (Track_ID)
);

create table if not exists Collection/Tracks (
	Collection integer references Collection (Collection_ID),
	Track integer references Track (Track_ID)
);