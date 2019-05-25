CREATE TABLE NewsCategory
(
NewsCategoryId integer PRIMARY KEY AUTOINCREMENT NOT NULL,
Name
);

CREATE TABLE News
(
NewsId integer PRIMARY KEY AUTOINCREMENT NOT NULL,
NewsCategoryId integer REFERENCES NewsCategory(NewsCategoryId),
Name text,
Link text
);

CREATE TABLE UsersSubscribes 
(
UsersSubscribesId integer PRIMARY KEY AUTOINCREMENT NOT NULL,
NewsId integer REFERENCES News(NewsId)
);

CREATE TABLE KeyWords
(
KeyWordsId integer PRIMARY KEY AUTOINCREMENT NOT NULL,
KeyWords []
);

CREATE TABLE Users 
(
UserId integer PRIMARY KEY AUTOINCREMENT NOT NULL,
KeyWordsId integer REFERENCES KeyWords(KeyWordsId),
UsersSubscribesId integer REFERENCES UsersSubscribes(UsersSubscribesId),
FirstName text,
LastName text,
Email text,
Age integer,
Gender text
);







