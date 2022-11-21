INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_illegal', 'illegal', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_illegal', 'illegal', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_illegal', 'illegal', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('illegal', 'illegal', 1);


-- make sure to add it for each illegal :P 
INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('illegal', 0, 'rank1', 'Новак', 10, '{}', '{}'),
('illegal', 1, 'rank2', 'Наемник', 10, '{}', '{}'),
('illegal', 2, 'rank3', 'Зам.шеф', 10, '{}', '{}'),
('illegal', 3, 'boss', 'Шеф', 10, '{}', '{}');