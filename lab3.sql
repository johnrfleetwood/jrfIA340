Lab3 - John Fleetwood

--2.2
/* insert into professor (p_email,p_name,office)
values ('p1@jmu.edu', 'p1', 'o1'), 
	('p2@jmu.edu','p2','o2') */

--2.3
/*insert into course (c_number, c_name, room, p_email)
values('c1','postgresql','r1','p1@jmu.edu'),
	('c2','mongodb','r2','p2@jmu.edu'),
	('c3','twitter','r1','p1@jmu.edu'); */

--2.4
/* insert into enroll (s_email, c_number)
values ('s1@jmu.edu','c1'),
	('s2@jmu.edu','c1'),
	('s3@jmu.edu','c1'),
	('s4@jmu.edu','c2'),
	('s2@jmu.edu','c3'),
	('s3@jmu.edu','c3'); */

--2.5
/* insert into professor (p_email,p_name,office)
values ('p3@jmu.edu','p3','o3');
insert into course (c_number, c_name, room, p_email)
values ('c4','facebook','r1', 'p3@jmu.edu'); 

You need to do the professor table first since it holds the primary key,
for the course table
*/

--2.6 

