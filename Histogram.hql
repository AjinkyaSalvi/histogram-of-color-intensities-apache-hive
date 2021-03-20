drop table Color;

create table Color (
     red int,
     green int,
     blue int
) 
row format delimited fields terminated by ',' stored as textfile;

load data local inpath '${hiveconf:P}' overwrite into table Color;

select 1, red, count(red)
from Color
group by red;

select 2, green, count(green)
from Color
group by green;

select 3, blue, count(blue)
from Color
group by blue;
