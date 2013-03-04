CREATE VIEW shorter_join AS
SELECT *
FROM people JOIN cart
ON cart.people_id = people.id
WHERE people.firstname = 'john';

SELECT lastname
FROM shorter_join
WHERE id = 3;

