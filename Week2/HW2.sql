-- I was having issues with PgAdmin and could not get it to boot at home after the first time. The quesitons for the notes was all I could do, I'll give more context tomorrow in class.
-- I finished this at 12:33 AM and am commiting it at that time. I know I submitted just the notes the first time, but I still wanted to get the practice. If you are willing to accept this even though the commit is late as that would be great, I understand if not. 
CREATE DATABASE practicedb

CREATE TABLE DND_Characters(
	Char_Name VARCHAR(20) PRIMARY KEY,
	Char_Class VARCHAR(20),
	Char_Race VARCHAR(20),
	Char_Level INT,
	Char_Life BOOLEAN DEFAULT TRUE
)

INSERT INTO dnd_characters(char_name, char_class, char_race, char_level, char_life)
VALUES ('Violet', 'Rouge', 'Elf', 3, True), ('Tok', 'Barbarian', 'Kobold', 3, True), ('Stardust', 'Wizard' , 'Astral Elf', 3, False);

--ERROR:  syntax error at or near "'Cleric'"
--LINE 2: VALUES ('Tikosh' 'Cleric' , 'Elf', 3, True);
                         ^ 

--SQL state: 42601
--Character: 102

--The distinct keyword removing duplicate results and only giving unique information is interesting and seems very useful.

--If i do use distinct in two columns does it find the values for each column separately or combine them?
