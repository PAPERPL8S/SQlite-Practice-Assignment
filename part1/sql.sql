    DROP TABLE Favorites;

    DROP TABLE Dogs;
    
    DROP TABLE Users;

    CREATE TABLE 
      Users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name TEXT NOT NULL,
        last_name TEXT NOT NULL,
        motto TEXT
    );

    INSERT INTO 
      Users (first_name, last_name, motto) 
    VALUES 
    ('Jon', 'Higgz', 'I love coding'),
    ('Andrey', 'Rusterton', 'I love coding even more'),
    ('Peter', 'Garboni', 'I love coding even more');
    
    CREATE TABLE 
    Dogs (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
    );

    INSERT INTO 
       Dogs (name) 
    VALUES 
    ('DOOMSLAYER'),
    ('Zoey'), 
    ('Jefferey');
   
    CREATE TABLE 
     Favorites (
        user_id INTEGER,
        dog_id INTEGER,
        PRIMARY KEY (user_id, dog_id),
        FOREIGN KEY (user_id) REFERENCES Users(id),
        FOREIGN KEY (dog_id) REFERENCES Dogs(id),
        UNIQUE(user_id, dog_id)
    );

    INSERT INTO 
       Favorites (user_id, dog_id) 
    VALUES 
      (1, 1), 
      (2, 1), 
      (3, 1), 
      (1, 3), 
      (2, 2);
    