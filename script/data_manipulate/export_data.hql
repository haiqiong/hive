INSERT OVERWRITE LOCAL DIRECTORY '/tmp/ca_employees'
SELECT name, salary, address
FROM staged_employees se
WHERE se.state = 'CA';
