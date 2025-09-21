use pubs;

select* from authors

select* from titles

select* from titleauthor

select name from sys.tables

SELECT au_lname, title_id FROM authors JOIN titleauthor ON authors.au_id=titleauthor.au_id 

select au_lname ,au_fname, title from authors JOIN titleauthor on titleauthor.au_id = authors.au_id JOIN titles on titles.title_id = titleauthor.title_id

select* from publishers

select au_lname ,au_fname, title, pub_name  from authors JOIN titleauthor on titleauthor.au_id = authors.au_id JOIN titles on titles.title_id = titleauthor.title_id
JOIN publishers on titles.pub_id = publishers.pub_id


select au_lname, au_fname, publishers.city , pub_name from authors JOIN publishers ON authors.city = publishers.city;
