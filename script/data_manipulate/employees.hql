CREATE TABLE IF NOT EXISTS mydb.employees (
	name STRING,
	salary FLOAT,
	subordinates ARRAY<STRING>,
	deductions MAP<STRING, FLOAT>,
	address STRUCT<street:STRING, city:STRING, state:STRING, ZIP:INT>)
	PARTITIONED BY (country STRING, state STRING)
	TBLPROPERTIES ('creator'='me', 'created_at'='2013-03-03 14:13');
	

