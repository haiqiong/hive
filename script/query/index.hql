CREATE INDEX employees_index
ON TABLE employees(country)
AS 'org.apache.hadoop.hive.ql.index.compact.CompactIndexHandler'
WITH DEFERRED REBUILD
IN TABLE employees_index_table1
PARTITIONED BY (country, name)

ALTER INDEX employees_index
ON TABLE employees
PARTITION (country = 'US')
REBUILD;

SHOW FORMATTED INDEX ON employees;

DROP INDEX IF EXISTS employees_index
ON TABLE employees;


