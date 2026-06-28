1. Drop database IF EXISTS user;
   Create DATABASE IF NOT EXISTS user;
   use user;
   Create TABLE IF NOT EXISTS user(user_id INT PRIMARY KEY , 
   user_name VARCHAR(50) , person_id INT , 
   FOREIGN KEY(person_id) REFERENCES person(person_id));
   insert into user values(1,"pranjal",01,);
   insert into user values(1,"pranjal",01,);
   insert into user values(1,"pranjal",01,);
   SELECT * FROM user;

/*SQL - COMANDS*/
  1. Alter - alter table student 
             add age int ;

 2. Truncate - truncate table student ;
 3. Rename   - RENAME student TO students; 
 


