--Query 1
CREATE TABLE Animal_Types(species_id integer, species text, habitat text, diet text);
CREATE TABLE Animals(animal_id integer, name text, species_id integer, age integer);
--Query 2
INSERT into Animal_Types(species_id, species, habitat, diet)
VALUES (1, 'Lion', 'Savanah', 'Carnivore'), (2, 'Giraffe', 'Savanah', 'Herbivore'), (3, 'Penguin', 'Arctic', 'Omnivore');
--Query 3
INSERT into Animals(animal_id, name, species_id, age)
VALUES (1, 'Simba The Lion', 1, 12), (2, 'Andrea The Giraffe', 2, 18), (3, 'Pingu The Penguin', 3, 22);
--Query 4
INSERT into Animals(animal_id name, species_id, age)
VALUES (1, 'Simba The Lion', 1, 12), (2, 'Andrea The Giraffe', 2, 18), (3, 'Pingu The Penguin', 3, 22);
--Error Test returned ERROR:  syntax error at or near "name"
--                    LINE 1: INSERT into Animals(animal_id name, species_id, age)
