USE `essentialmode`;

CREATE TABLE `darkstore` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`store` varchar(100) NOT NULL,
	`item` varchar(100) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `blackmarket` (store, item, price) VALUES
	('bm_japan'	,'onigiri',1),
	('bm_japan'	,'takeyaki',33),
	('bm_japan'	,'karaage',7),
	('bm_japan'	,'ramune',7),
	('bm_japan'	,'np_ramen',1),
	('bm_japan'	,'sushi',11),
	('bm_japan'	,'np_sake',11),
	('bm_japan'	,'yakitori',17),
	('bm_japan'	,'melon_soda',5),
	('bm_japan'	,'soba',13),
	('bm_japan'	,'japanesecurry',14),
	('bm_japan'	,'okonomiyaki',24),
	('bm_japan'	,'tamagoyaki',5),
	('bm_japan'	,'teriyaki',24),
	('bm_japan'	,'bubble_tea',2)
;