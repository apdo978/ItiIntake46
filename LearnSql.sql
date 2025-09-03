  SET  dbName;-- => to use the db u want ;
  SHOW DATABASES;
 CREATE DATABASE ;dbName -- to create db;

 describe DATABASE ; -- to describe the database ;
 desc table tableName ; -- to describe the table ;
 show TABLES;
 show columns from tableName;-- to show columns in the table

 drop DATABASE ; -- to drop data base ;
ALTER DATABASE dbName Read only = 1 -- read only mode without any modification 
ALTER DATABASE dbName Read only = 0 -- 
-- --constraints
-- primary key
-- foreign key
-- unique
-- not null
-- check
-- default
-- auto_increment
create table tableName (
    columnname type constraiens 
)
Ex:
CREATE table Students (
    id INT primary key, --int is the first constraint 
    salary decimal ,
    first_name char(50) not null,
    last_name char(50) unique,
    birth_date date 
    birth_date time 
    birth_date datetime  
    -- or
    primary key (id)
    unique (first_name)
    check (salary > 0)
    -- or 
    -- constraient nameOfConstraint columnname (unique)
    index (columnname);
);
create index indexName on tableName (columnName);
drop index indexName on tableName;

-- explain query

-- to add cloumns 
alter table tablename add (
        columnname type constraiens ,
            columnname type constraiens 
)
Ex:
alter table Students add (Postal_code2 int not null ,
test char unique ,
test2 int not null
) ;
-- to remove cloumns 
alter table tablename  drop  columnname  ;

Ex:
alter table Students drop  Postal_code   ;

-- to remove row 
delete from tableName  -- delete the rows not the whole structure 
where columnName = value -- of the row u want 
limit 1 -- to just delete one row
EX:
delete from students 
where ssn > 4
--truncate reset all preferances of tabels and meta data  but not delete 


-- to drop table 
drop table tableName
drop table students

-- to get all data from table 
select  * from tableName
select distinct  columnName from tableName // to avoid duplicated values 
--order by clause 
order by columnName desc /asc--(default)
order by columnName desc /asc-,columnName desc /asc--(default) if some domains in column are equal
-- limit clause (pageination) with order is very useful
limit offset(tseeb kam row ),1/2/3; 
Ex:
limit 1,1
limit 2,1 --seeb 2 row w hat row 1 bas 


-- to get specifics columns from table 
select columnName,columnName from tableName
EX:
SELECT ssn,first_name FROM students;

-- Where clause if u r looking for 
-- specific (row) somthing 
select * from tableName
where columnName = value 
Ex:
SELECT * FROM students WHERE ssn = 1;
SELECT * FROM students WHERE ssn >= 1;
SELECT * FROM students WHERE ssn != 1;
SELECT * FROM students WHERE last_name is null;
SELECT * FROM students WHERE last_name is not null;



-- to rename table 
Rename table oldname to newname
Ex:
rename table  new to employee 

-- to rename column
alter table tableName 
rename columnName to newName 
EX:
alter TABLE Students 
rename column id to ssn;
-- to modify data type  
alter tablename 
modify column columnName newDataType
Ex:
alter TABLE students
modify column first_name char(25)

-- to  modify data constraint
alter tablename 
modify  columnName DataType newconstraint
Ex:

alter TABLE students
modify  first_name char(25)  not null;



-- to  add data constraint
alter tablename 
add constraint unique (columnName)

alter table tablename 
 add constraint nameOfConstraint + check(columnName >= value )


-- to drop constraient
alter table tableName
drop constraient nameOfConstraint; 

-- to modify a column order 
modify column columnName samedtattype 
after columnname  / 
 first

 Ex:
 alter TABLE students
modify column first_name char(25)
 first 

alter TABLE students
modify column first_name char(25)
after ssn 

-- insert data
insert into tableName
values("column one value",2,"");

-- insert data multiable row 
insert into tableName
values(),(),();
-- date year-month-day
-- 2025-05-03
Ex:
INSERT into students 
values("apdo",1,"mohamed");
INSERT into students 
values("",3,"apdoss"),("sss",4,"s");
INSERT into students 
values(current_date() +1/-1,current_time(),now()),("sss",4,"s");

-- partially insert 
insert into tableName (columnName,columnName)
value();
Ex:
 INSERT into students (ssn,last_name)
value(10,"10");

-- to edit data in you table 
update tableName 
set columnName = newValue, --updated
columnname = newValue ,
columnname = newValue ,
where columnName = value 
limit 1 --to just update one row   the row/s that u want to update 
Ex:

update students 
SET first_name = "value"
where ssn = 1;--the row which contain ssn = 1
-- where first_name is null;

-- auto commit 
-- set autocommit = off;
-- set autocommit = on;

-- cheack point to save the change 
-- commit;

-- rollback --to get back to your check point

--check constraint 

 create table tableName (
       id INT primary key, --only one per table 
    salary decimal ,
    first_name char(50) not null,
    last_name char(50) unique,
    birth_date date 
    birth_date time 
    birth_date datetime ,
    constraint chk_columnname check(columnName > = value)
 )
 alter table tablename 
 add constraint nameOfConstraint (columnName >= value )


-- default values 
 create table tableName (
       id INT primary key auto_increment,
    salary decimal ,
    first_name char(50) not null default "empty",
    last_name char(50) unique,
    birth_date date 
    birth_date time 
    birth_date datetime default now() ,
    constraint chk_columnname check(columnName > = value)
 )

 alter table tableName
 alter columnName set default value

-- to set auto increment from specific value 
 alter table tableName
  auto_increment =1000

-- forigen key 
create table tableName (
    customer_id int,
    customer_name int,
    customer_address int,
    foreign key(columnName) references tableNameOfPrimarykey(columnname)

 )

--to rename forign key  or add it 
alter table tablename 
-- add constraint  fkname
    foreign key(columnName) references tableNameOfPrimarykey(columnname)


-- drop forigen key 
alter table tableName
drop forigen key forigen key name 

-- join
-- equal join
select columnname,columnanme 
from tableName as t1,table_name as t2 
where t1.columnanme = t2.columnname
-- inner 
select * from 
table1 inner join table2 
on table1.forignkeycolumn = table2.forignkeycolumn
select columnNametable1,columnName2table1,columnNametable2,columnNametable2 from 
table1 inner join table2 
on table1.forignkeycolumn = table2.forignkeycolumn 
-- outer left
 select columnname,columnanme 
from tableName as t1 left outer join table_name as t2 
on t1.columnanme = t2.columnname

-- outer right
 select columnname,columnanme 
from tableName as t1 right outer join table_name as t2 
on t1.columnanme = t2.columnname

-- self join (recursive relationship)
select columnname,columnanme 
from sametableName as t1 , join sametableName as t2 
where t1.columnanme = t2.columnname
-- or
select columnname,columnanme 
from sametableName as t1 self join sametableName as t2 
on t1.columnanme = t2.columnname

-- functions in my sql 
-- aggregate functions (count  ignoers null )
-- 1-count (column name )
select count (column name ) 
from tablename;

-- alias 
select count (column name ) as "alias"
from tablename;

select max (column name ) as maximum
from tablename;

select min/avg/sum (column name ) as maximum/avg/sum
from tablename;

--concatination od two columns 
select concat (column name," ",columnname ) as fullName
from tablename;

-- logical operator
-- where not / or /and / and not / between value and value / in (value,value,value)

-- wild card charcters %  and like operator 

select * from tableName 
where columnName like  "s%" --starting with s 
where columnName like  "2023%" --starting with 
where columnName like  "%r" --end with 
where columnName like  "ahm_d" -- one random letter 
where columnName like  "____-01-____" -- one random letter 
where columnName like  "_a%" 


-- union operator combines results of two or more select statemenets 
-- will not work if the tables have differant columns count ucan 
--select specific columns 
-- doesn't allow duplicate 
-- union all show the duplicates 
select * from tableName 
union
select * from tableName 

select first_name,last_name from tableName 
union
select first_name,last_name from tableName 

-- self join 


select alias.columnname,concat(alias.columnname,aliasb.columnname) as "newName" from tableName as alias
 inner/left/right join from tableName as aliasb
 on alias.columnname = aliasb.columnname

-- view virtual table 
-- view dont have its own data it will update the original tables
create view nameOfView as 
select columnName,columnName from tableName
-- to give regular user access on this view instead of tabels 
-- with  DML cheacking 
create view nameOfView as 
select columnName,columnName from tableName
where columnname > 15
with check option; --will not insert any data without checking the where condition
-- to alter the view 
create or replace view viewName
as 


-- drop  view 
drop  view nameofview



-- subquery()
select columnName,columnName2,
(select avg(columnName) from tablename ) as columnNameAlies --subquery
from table 

-- when i dont have an info to compare with
select columnName,columnName2,
from table  
where  (select avg(columnName) from tablename ) as columnNameAlies --subquery

--group by => should be used with aggregate function  aggregate function
select sum(columnanme), coulmnName
from table name
GROUP BY columnname 
having count(columnname) --instead of where not working with group by or aggregate function

--rollup

-- single value operator
-- > < +  = 
-- multi values comparison operators 
-- all,any , in
select * from tableName
where columnname > all /any(select columnname from tablename where coliumn name =10) -- => multi value sub query

-- indexes to speed up retrival of data but makeing inserting and updating alittlebit slower why 
-- evrey time u  insert or update u r also sorting and indexeing the new data 
-- maybe defeind on column or multi
-- can be created by user or dbms by default for primary key 
-- without indexes we r doing full table scan 
-- data is not sorted  
-- scattered

-- Index Creation Guidelines
-- When to Create an Index:
-- Heavy Data Retrieval: Create an index when you frequently retrieve large amounts of data from a table.

-- Search Conditions and Joins: Index columns that are often used in WHERE clauses, JOIN conditions, or other search operations.

-- High Null Values: Index columns that contain a large number of NULL values, as this can improve query performance.

-- When Not to Create an Index:
-- Frequent Updates: Avoid indexing tables that are updated (inserted, modified, or deleted) frequently, as indexes slow down write operations.
-- index  
create index index_name
on tablename(columnname);

show indexs from table_name 
-- type of indexes
-- heap = table without indexes
-- clustered = data is stored in the order of the index => physically re order and index data

-- non-clustered = separate structure from the data not physically sort the data but making new pointers contain pointers to data
-- normalization
-- # Text Parsing: Normalization of Data

-- ## Key Points Extracted:

-- 1. **Definition**: Normalization is a process that evaluates a table against a series of tests (Normal Forms).

-- 2. **Purpose 1**: Certifies good database design by:
--    - Minimizing redundancy
--    - Preventing anomalies:
--      - Insert anomalies
--      - Update anomalies
--      - Delete anomalies
--    - Reducing frequent null values

-- 3. **Purpose 2**: Serves as an alternative method for creating database designs.

-- ## Structure:
-- The text describes database normalization as a quality assurance process that applies standardized tests (Normal Forms) to tables. It highlights two main benefits: ensuring good design by eliminating data redundancy and various anomalies, and providing a methodology for database design.
-- Normalization
-- Definition:

-- Normalization is the process of decomposing poorly designed ("bad") relations (tables) by splitting their attributes into smaller, well-structured relations.

-- Purpose:

-- Transforms an inefficient or problematic database design into a more optimized structure by:

-- Reducing redundancy

-- Improving data integrity

-- Minimizing anomalies (insert, update, delete)

-- Process:

-- Involves systematically breaking down large, complex tables into smaller, logically related tables while preserving data relationships.

-- First Normal Form (1NF) Goals:
-- Eliminate repeating groups in individual tables.

-- Create a separate table for each set of related data.

-- Identify each set of related data with a primary key.

-- Second Normal Form (2NF) Goals:
-- Create separate tables for sets of values that apply to multiple records.

-- Relate these tables with a foreign key.

-- Third Normal Form (3NF) Additional Goal:
-- Eliminate fields that do not depend on the key.

-- candidte keys magmo3at el column el tenfa4 teb2a keys 
Table 1: Student_Details (Basic Information)
StudentID	GivenNames	Surname
12345121	Sarah	Doe
12345303	Susan	Smith
12345678	John Paul	Bloggs
12345876	Susan	Smith
StudentID + GivenNames +Surname (key m4 hytkarr tany )
StudentID + GivenNames  (key m4 hytkarr tany )
-- candidte keys l2nohm m4 2ael 3add keys momkn y kon mowagowd fe eltable 
-- the least columns amount that can represent the single row identifcation without dublication => primary key 




Table 2: Student_Details (Academic Records)
StudentID	CourseName	Year	Sem	Pctg
12345678	Data Science	2019	2	72
12345121	Programming 1	2020	1	87
12345678	Computing Mathematics	2019	2	43
12345678	Computing Mathematics	2020	1	65
12345121	Data Science	2020	1	65
12345876	Computing Mathematics	2019	1	75
12345876	Programming 1	2019	2	55 
12345303	Computing Mathematics	2020	1	80

-- denirmalized data 
-- oltp online transaction proccesseing
-- evrey transactional proccess recorded (crud)
-- normalization is better 

-- olap (data warhouse) online analytecal proccesseing (read is most used operation for analysis => lock no inserting or any update untill
-- i finish reading )
-- denormalized is better 

-- SQL (structured query Lang executed with the engine RDBMS)
-- ddl (data def lang )

-- dml(data manpulation lang ) / dquery lang 
-- select 
-- insert
-- update
-- delete
-- merge - upsert (deilect)
-- dcl (data control lang)

-- select 
-- select 1+1; => 2 like print 
-- select "Hello Sql"; => Hello Sql
-- select "Hello Sql" , "my", "name", "is"; => Hello Sql my name is 
-- select "Hello Sql" , "my", "name", "is" as name ; => alias to column name  
-- select "Hello Sql" , "'my'", "\"name\"", "\n is" as name ; => alias to column name  => escaping sequance
-- select 1=2;  comparison operator 
-- select 'b' in ('a','b'); (set) comparison operator 
-- select 'b' not in ('a','b'); (set) comparison operator 

-- select 1<>2;not equal operator  select 1!=2; select 1 not = null  
-- select 1+2;  
-- select 1-2;  
-- select 1*2;  
-- select 1%2; 
-- select 'Hello sql' like "word %"
-- select 'Hello sql' like "%word " % like * replacing any number of chars
-- select 'Hello sql' like "_word " _  replacing only on char

--charcter set which lang (alphabet) u used in this db 
-- collation   => charcter set to use with the engine and 
-- select 'a' like "ä" => true 1
-- select 'a' like "ä" collate utf8mb4_german => false  0 => over rideing any defaults collation

-- bulitin functions
-- select ascii('a');
-- select Char('a');
-- select curdate() / now()
-- select concat()
-- select concat_ws(' ','name','last')//with seprator
-- select length()//
-- select lower()//
-- select upper()//
-- select left()// last 10 chars from left
-- select right()//last 10 chars from right
-- select sunstr('string',start,end)//sliceing
-- select trim()
-- select isNull(); => true or false 
-- select 5 between 1 and 10; => true or false 
-- select if(condetion,"true","false"); => true or false 

-- declaring variabels
-- set @nameofvar := 5;
-- set @nameofvar = 5;

-- select from tabels

select columnName,columnName (column experssion) from dbname.table -- (fully qualified name )//from declaring that the word after is entity (table or view )
select distinct  columnName from dbname.table --// to avoid duplicated values 
select   columnName , "dummy text" from dbname.table --// to generate data 
select   columnName , curdate() from dbname.table --// to generate dynamic data 
select   columnName + 100 , left(columnName,3) from dbname.table --//looping on each row value
select   columnName + 100 , left(columnName,3) from dbname.table limit 5 --//to limit the result 
select   columnName + 100 , left(columnName,3) from dbname.table limit 10,5 --//escape 10 and the next result 
select   columnName + 100 , concat(columnName," ",columnName),left(columnName,3) as first_three from dbname.table limit 10,5 ;
select   * ,"dummytext" from dbname.table limit 10,5 ;

-- order  => the default order is order of how the data intially inserted
-- order by  alphabet according to collation defaiend in the db
select   * ,"dummytext" from dbname.table order by columnName ,columnname ;

--union combine to quiers in on result set 
(select  columnName from dbname.table limit 10,5 ;)
union
(select  columnName from dbname.table limit 50,5 ;)

-- where clause condition to filter data 
where columnname > value and columnname < value = between 16 and 90;
where length(columnname) <10;
where like "%r" and columnname >10;


-- joins 

SELECT film_category.film_id, category.category_id, category.name FROM category
INNER JOIN film_category
ON film_category.category_id = category. category_id;


SELECT film_category.figm_id, category.category_id, category.name FROM category
INNER JOIN film_category
using (category_id)
;

-- types left table => table 1 the first one
-- types right table => table 2 the second one

-- inner join only returns rows with matching values in both tables
-- left join returns all rows from the left table and matching rows from the right table and return null for none matching
-- right join returns all rows from the right table and matching rows from the left table and return null for none matching
-- full outer join returns all rows from both tables and fills in nulls for non-matching rows


-- transactions => ACID 
-- atomicity => all or  => all as one all or none 
-- consistency => data must be valid according to all defined rules
-- isolation => locks => no one cannot read or write on this table untill the transaction done  transactions are isolated from each other
-- durability => once a transaction is committed, it will remain so, even in the event of a system failure