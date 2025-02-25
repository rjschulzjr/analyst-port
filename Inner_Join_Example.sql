/*INNER JOIN or EXPLICIT JOIN - optimizes query search by ignoring anything in the second table that does not have an entry in the first
 (IE - drops records from the second table that are not in the first*/
 
 select 
 name, 
 number, 
 room, 
 ssn, 
 score 
 
 from course inner join enrolls_in 
 
 on course.number = enrolls_in.class;
 
 select * from student;