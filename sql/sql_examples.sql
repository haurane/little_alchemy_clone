CREATE TABLE items (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT UNIQUE, description TEXT, imgPath TEXT, isDiscovered BOOLEAN);
INSERT INTO items (name,description,imgpath,isdiscovered) VALUES 
	('water','this is water','assets/icons/water.png',true),
    ('earth','this is earth','assets/icons/earth',true),
	('fire','this is fire','assets/icons/fire.png',false),
    ('air','this is air','assets/icons/air.png',false);

CREATE TABLE discoveries (id INTEGER PRIMARY KEY AUTOINCREMENT, source_1_id INTEGER, source_2_id INTEGER, result_id INTEGER,
                          FOREIGN KEY(source_1_id) REFERENCES items(id), FOREIGN KEY (source_2_id) REFERENCES items(id), FOREIGN KEY (result_id) REFERENCES items(id));

SELECT i.name
FROM discoveries d
JOIN items i ON i.id = d.result_id
WHERE d.source_1_id = 1 AND d.source_2_id = 2;

SELECT s2.name as source2, res.name as result
FROM discoveries d
join items as s2 on d.source_2_id = s2.id
join items as res on d.result_id = res.id
WHERE d.source_1_id = 1