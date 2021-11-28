INSERT INTO Executor (First_name, Last_name, biography) 
	VALUES('Alan', 'Walker', 'https://en.wikipedia.org/wiki/Alan_Walker_(music_producer)'),
	VALUES('John', 'Newman', 'https://en.wikipedia.org/wiki/John_Newman_(singer)'),
	VALUES('Betta', 'Lemme', 'https://en.wikipedia.org/wiki/Betta_Lemme'),
	VALUES('Mr.Kitty', 'None', 'https://de.wikipedia.org/wiki/Mr.Kitty'),
	VALUES('Hidden', 'Citizens', 'https://aminoapps.com/c/music/page/item/hidden-citizens/z7Uw_I0gn4pW573zNoQ1lJ1kZoWNRz'),
	VALUES('ม่-2', 'None', 'https://en.wikipedia.org/wiki/Bi-2'),
	VALUES('Hans', 'Zimmer', 'https://en.wikipedia.org/wiki/Hans_Zimmer'),
	VALUES('Era', 'None', 'https://en.wikipedia.org/wiki/Era_(musical_project)'),
	VALUES('Aurora', 'None', 'https://en.wikipedia.org/wiki/Aurora_(singer)'),
	VALUES('Skillet', 'None', 'https://en.wikipedia.org/wiki/Skillet_(band)')
);

INSERT INTO Musical_genre (Genre_title, Description_genre)
	VALUES('Electronic music', 'https://en.wikipedia.org/wiki/Electronic_music'),
	VALUES('Electro Wave', 'https://de.wikipedia.org/wiki/Electro_Wave'),
	VALUES('Synthiepop', 'https://de.wikipedia.org/wiki/Synthiepop'),
	VALUES('New Wave', 'https://de.wikipedia.org/wiki/New_Wave'),
	VALUES('Witch House', 'https://de.wikipedia.org/wiki/Witch_House'),
	VALUES('Dark Wave', 'https://de.wikipedia.org/wiki/Dark_Wave'),
	VALUES('Pop music', 'https://en.wikipedia.org/wiki/Pop_music'),
	VALUES('Dance-pop', 'https://en.wikipedia.org/wiki/Dance-pop'),
	VALUES('Soul music', 'https://en.wikipedia.org/wiki/Soul_music'),
	VALUES('Breakbeat', 'https://en.wikipedia.org/wiki/Breakbeat'),
	VALUES('Northern soul', 'https://en.wikipedia.org/wiki/Northern_soul'),
	VALUES('Future bass', 'https://en.wikipedia.org/wiki/Future_bass'),
	VALUES('Electro house', 'https://en.wikipedia.org/wiki/Electro_house'),
	VALUES('Styles of house music', 'https://en.wikipedia.org/wiki/Styles_of_house_music#S'),
	VALUES('Progressive house', 'https://en.wikipedia.org/wiki/Progressive_house'),
	VALUES('Big room house', 'https://en.wikipedia.org/wiki/Big_room_house'),
	VALUES('Deep house', 'https://en.wikipedia.org/wiki/Deep_house'),
	VALUES('Electronic dance music', 'https://en.wikipedia.org/wiki/Electronic_dance_music'),
	VALUES('Art pop', 'https://en.wikipedia.org/wiki/Art_pop'),
	VALUES('Nordic folk music', 'https://en.wikipedia.org/wiki/Nordic_folk_music'),
	VALUES('Synth-pop', 'https://en.wikipedia.org/wiki/Synth-pop'),
	VALUES('Electropop', 'https://en.wikipedia.org/wiki/Electropop'),
	VALUES('Folktronica', 'https://en.wikipedia.org/wiki/Folktronica'),
	VALUES('Darkness in music', 'https://en.wikipedia.org/wiki/Darkness_in_music'),
	VALUES('Avant-pop', 'https://en.wikipedia.org/wiki/Avant-pop'),
	VALUES('Folk-pop', 'https://en.wikipedia.org/wiki/Folk-pop'),
	VALUES('New-age music', 'https://en.wikipedia.org/wiki/New-age_music'),
	VALUES('Christian metal', 'https://en.wikipedia.org/wiki/Christian_metal'),
	VALUES('Alternative rock', 'https://en.wikipedia.org/wiki/Alternative_rock'),
	VALUES('Hard rock', 'https://en.wikipedia.org/wiki/Hard_rock'),
	VALUES('Nu metal', 'https://en.wikipedia.org/wiki/Nu_metal'),
	VALUES('Symphonic metal', 'https://en.wikipedia.org/wiki/Symphonic_metal'),
);

INSERT INTO Album (Title, Year_of_issue) 
	VALUES(),
);


INSERT INTO Track (Album_ID, Track_title, duration) 
	VALUES(),
);


INSERT INTO Collection (Title, Year_of_issue, Description) 
	VALUES(),
);


INSERT INTO Musical_genre_Executor (Genre_ID, Executor_ID) 
	VALUES(),
);

INSERT INTO Joint_album (Executor_ID, Album_ID) 
	VALUES(),
);

INSERT INTO Collection_Tracks (Collection_ID, Track_ID) 
	VALUES(),
);