LOAD DATA LOCAL INPATH '${env:HOME}/california-employees}'
OVERWRITE INTO TABLE employees
PARTITION (country = 'US', state = 'CA');
