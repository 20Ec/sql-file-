create database forr;
use forr;
create table Books(s_no int primary key,
                   book_title text,
                   author_name text,
                   genre text,
                   publication year,
                   price int);


create table authors(
		se_no int primary key,
		author_age int,
		author_native varchar(50),
		author_name varchar(60),
		s_no int,
		constraint fk_s_no foreign key(s_no) references Books(s_no) on delete set null);
        -- bo0ks--
insert into Books values (1,"Cindrella","Walter Elias Disney","Cartoon",1997,5000);
insert into Books values (2,"Zombie","Hitler","Horror",1987,500);
insert into Books values (3,"Life of Pie","Mary Comb","Life lesson",2007,2000);
insert into Books values (4,"Life of Lord","Prince Jack","Fiction",1907,4000);
insert into Books values (5,"World tour","William","action",2002,5500);
insert into Books values (6,"Poppins","Wright Brothers","Cartoon",2010,3000);

        -- author--
insert into authors values (1,20,"Dubai","William",5);
insert into authors values (2,25,"Bombay","Zombie",2);
insert into authors values (3,30,"Sidney","Walter Elias Disney",1);
insert into authors values (4,40,"Darjiling","Wright Brothers",6);
--- show all table data--
select*from Books;
-- Retrieve the details of a book based on its title.--
  SELECT * FROM Books
WHERE Books LIKE 'Life%';
-- changes in book price--
UPDATE Books
SET price= 1000;
-- delet a book--
DELETE from Books
WHERE  s_no = 1;
-- average of books price--
SELECT AVG(price) FROM Books;  
-- relation from the books and author--
select * from Books;
SELECT Books.s_no,Books.book_title, Books.genre, Books.publication,Books.price, Authors.author_name,Authors.author_native,Authors.author_age
FROM Books
JOIN Authors ON Books.s_no = Authors.s_no;
