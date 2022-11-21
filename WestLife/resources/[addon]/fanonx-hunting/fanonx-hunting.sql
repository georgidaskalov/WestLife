USE `es_extended`;

INSERT INTO `items` (`name`, `label`, `weight`, `can_remove`) VALUES
	("leather_deer_bad", 'Надупчена еленска кожа', 1, 1), 
	("leather_deer_good", 'Добра еленска кожа', 1, 1), 
	("leather_deer_perfect", 'Отлична еленска кожа', 1, 1), 
    ("leather_boar_bad", 'Надупчена глиганска кожа', 1, 1), 
	("leather_boar_good", 'Добра глиганска кожа', 1, 1), 
	("leather_boar_perfect", 'Отлична глиганска кожа', 1, 1), 
    ("leather_mtlion_bad", 'Надупчена кожа от пума', 1, 1), 
	("leather_mtlion_good", 'Добра кожа от пума', 1, 1), 
	("leather_mtlion_perfect", 'Отлична кожа от пума', 1, 1), 
    ("leather_coyote_bad", 'Надупчена кожа от койот', 1, 1), 
	("leather_coyote_good", 'Добра кожа от койот', 1, 1),
	("leather_coyote_perfect", 'Отлична кожа от койот', 1, 1), 
    ("leather_rabbit_bad", 'Надупчена заешка кожа', 1, 1), 
	("leather_rabbit_good", 'Добра заешка кожа', 1, 1), 
	("leather_rabbit_perfect", 'Отлична заешка кожа', 1, 1), 
    ("leather_cormorant_bad", 'Надупчена птича кожа', 1, 1), 
	("leather_cormorant_good", 'Добра птича кожа', 1, 1), 
	("leather_cormorant_perfect", 'Отлична птича кожа', 1, 1),
	("deer_horn", 'Еленски рог', 1, 1),
	("animal_bait", 'Животинска стръв', 1, 1),
	("cookedMeat", 'Изпечено месо', 1, 1),
	("leather_chickenhawk_bad", 'Надупчена ястребова кожа', 1, 1), 
    ("leather_chickenhawk_good", 'Добра ястребова кожа', 1, 1), 
    ("leather_chickenhawk_perfect", 'Отлична ястребова кожа', 1, 1)
;

INSERT INTO `licenses` (`type`, `label`) VALUES
	("hunt", "Лиценз за лов")
;
