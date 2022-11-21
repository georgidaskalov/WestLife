USE `essentialmode`;

CREATE TABLE kotence (
	identifier VARCHAR(100) NOT NULL,
	actions_remaining int(10) NOT NULL,
	PRIMARY KEY (identifier)
);