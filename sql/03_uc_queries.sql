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