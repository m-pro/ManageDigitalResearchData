CREATE TABLE people (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	born DATE
);

CREATE TABLE plays (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	author INTEGER REFERENCES people(id),
	realeased DATE
);

CREATE TABLE genre (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	genre TEXT,
	play INTEGER REFERENCES plays(id)
);

CREATE TABLE characters (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	character TEXT,
	actor INTEGER REFERENCES people(id),
	play INTEGER REFERENCES plays(id)
);

CREATE TABLE act (
	play INTEGER REFERENCES plays(id),
	character INTEGER REFERENCES characters(id)
);

CREATE TABLE scene (
	play INTEGER REFERENCES plays(id),
	character INTEGER REFERENCES characters(id)
);

CREATE TABLE line (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	line TEXT,
	play INTEGER REFERENCES plays(id),
	character INTEGER REFERENCES characters(id)
);

