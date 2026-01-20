use internship
select * from student where marks >=6 order by special_subject asc
select * from student order by age desc
select * from student order by age asc
select rollno from student where marks >60 order by age desc
select count(*) from student order by special_subject asc

-- sorting on multiple column
select * from student order by age desc,rollno asc 
select * from student order by addmission_date desc,age asc

--  limit result using limit
select * from student limit 5
select * from student limit 5,5
select * from student limit 5 offset 10

-- order by with where
select * from student where marks > 60 order by marks asc
select * from student where marks > 60 order by marks desc limit 5

-- offset for pagination
select * from student limit 5,5 
select * from student limit 5 offset 10  

-- understand perfomance
select * from student limit 5,5 # reads first 10 rows  discard 5 rows returns 5 rows
select * from student limit 5 offset 10  # reads first 15 rows  discard 10 rows returns 5 rows

-- leader bord
select rollno, std_name, marks from student order by marks desc limit 10 -- top 10 student from any division
select * from student order by marks desc limit 5 -- top 5 students

-- test edge cases
select rollno, std_name, marks,
       rank() over (order by marks desc) as rank_pos
from student;


