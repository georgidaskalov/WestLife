SET @job_name = 'bahamas';
SET @society_name = 'society_bahamas';
SET @job_Name_Caps = 'bahamas';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_bahamas_fridge', 'bahamas (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  (@job_name, @job_Name_Caps, 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'barman', 'Сервитьор', 200, '{}', '{}'),
  (@job_name, 1, 'dancer', 'Опитен Сервитьор', 300, '{}', '{}'),
  (@job_name, 2, 'viceboss', 'Управител', 400, '{}', '{}'),
  (@job_name, 3, 'boss', 'Шеф', 500, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES  
    ('japanesecurry', 'Японско къри', 10),
    ('karaage', 'Карааге', 10),
    ('np_ramen', 'Рамен', 10),
    ('np_sake', 'Саке', 10),
	('okonomiyaki', 'Окономияки', 10),
	('onigiri', 'Онигири', 10),
	('ramune', 'Рамуне', 10),
	('bubble_tea', 'Чай с балончета', 10),
	('melon_soda', 'Сода пъпеш', 10),
	('soba', 'Соба', 10),
	('sushi', 'Суши', 10),
	('takeyaki', 'Такеяки', 10),
	('tamagoyaki', 'Тамагояки', 10),
	('teriyaki', 'Терияки', 10),
	('yakitori', 'Якитори', 10),
;
