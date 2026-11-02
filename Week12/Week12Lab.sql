CREATE TABLE Locations(Name text PRIMARY KEY, Biome text, RoomCount int);

CREATE TABLE Enemies(
locname text ,
Enemy_Name text PRIMARY KEY,
Health int,
FOREIGN KEY(locname) REFERENCES locations(name)
)

INSERT INTO Locations(Name, Biome, RoomCount)
VALUES
('Dirtmouth', 'Upper Shell', 1),
('Abyss', 'Lower Court', 3),
('Fog Canyon', 'Green Collective', 8)

INSERT INTO Enemies(Locname, Enemy_Name, Health)
VALUES
('Dirtmouth', 'Elderbug', 999),
('Dirtmouth', 'Gravedigger', 1),
('Abyss', 'Shade', 25),
('Fog Canyon', 'Ooma', 1),
('Fog Canyon', 'Uoma', 1)

SELECT locations.name,
locations.roomcount,
enemies.enemy_name FROM locations
JOIN enemies
on locations.name = enemies.locname

-- One to One
-- The employees would have any data dependent on the department missing
-- It allows us to link tables in a secure manner.
