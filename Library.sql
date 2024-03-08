CREATE TABLE `Books` (
  `BookID` integer PRIMARY KEY,
  `Title` varchar(255),
  `AuthorID` integer,
  `GenreID` integer,
  `PublicationYear` smallint
);

CREATE TABLE `Authors` (
  `AuthorID` integer PRIMARY KEY,
  `FirstName` varchar(255),
  `LastName` varchar(255)
);

CREATE TABLE `Genres` (
  `GenreID` integer PRIMARY KEY,
  `Name` varchar(255)
);

ALTER TABLE `Books` ADD FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`);

ALTER TABLE `Books` ADD FOREIGN KEY (`GenreID`) REFERENCES `Genres` (`GenreID`);
