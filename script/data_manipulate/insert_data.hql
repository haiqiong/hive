FROM staged_employee se
INSERT OVERWRITE TABLE mydb.employees
	PARTITION (country = 'US', state = 'OR')
  SELECT * WHERE se.cnty = 'US' AND se.st = 'OR';
INSERT OVERWRITE TABLE mydb.employees
	PARTITION (country = 'US', state = 'CA')
  SELECT * WHERE se.cnty = 'US' AND se.st = 'CA';
INSERT OVERWRITE TABLE mydb.employees
	PARTITION (country = 'US', state = 'IL')
  SELECT * WHERE se.cnty = 'US' AND se.st = 'IL';
