CREATE TABLE people (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	born DATE
);

CREATE TABLE articles (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	author INTEGER REFERENCES people(id),
	topic TEXT
);

CREATE TABLE reviews (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	article INTEGER REFERENCES articles(id),
	author INTEGER REFERENCES people(id),
	recommended INTEGER
);

CREATE TABLE journal (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT,
	realeased DATE
);

CREATE TABLE published (
	article INTEGER REFERENCES articles(id),
	publication INTEGER REFERENCES journal(id)
);

