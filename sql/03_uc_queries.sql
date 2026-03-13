USE address_book_service;
SET SQL_SAFE_UPDATES = 0;

-- Update address for Devraj Singh
UPDATE address_book 
SET address = '456 New Park Ave', city = 'New Bangalore' 
WHERE first_name = 'Devraj' AND last_name = 'Singh';

-- View the updated record
SELECT * FROM address_book WHERE first_name = 'Devraj';
-- Delete a person using their name
DELETE FROM address_book 
WHERE first_name = 'John' AND last_name = 'Doe';

-- Verify the deletion
SELECT * FROM address_book;
USE address_book_service;

-- Retrieve Person belonging to a City from the Address Book 
SELECT * FROM address_book 
WHERE city = 'Mumbai';

-- Retrieve Person belonging to a State from the Address Book 
SELECT * FROM address_book 
WHERE state = 'Maharashtra';
USE address_book_service;

-- Ability to understand the size of address book by City
SELECT city, COUNT(*) as city_count 
FROM address_book 
GROUP BY city;

-- Ability to understand the size of address book by State
SELECT state, COUNT(*) as state_count 
FROM address_book 
GROUP BY state;
USE address_book_service;

-- Retrieve entries sorted alphabetically by Person's name for a given city
SELECT * FROM address_book 
WHERE city = 'Mumbai' 
ORDER BY first_name ASC;

USE address_book_service;

-- Alter Address Book to add address book name and type 
ALTER TABLE address_book 
ADD COLUMN ab_name VARCHAR(50) AFTER id,
ADD COLUMN type VARCHAR(50) AFTER email;

-- View table structure to verify new columns
DESCRIBE address_book;

-- Ability to get number of contact persons i.e. count by type [cite: 53, 55]
SELECT type, COUNT(*) as type_count 
FROM address_book 
GROUP BY type;