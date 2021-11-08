insert into professors(professor_name, professor_mail)
values('Alicia','alicia@gmail.com'),('Roberto','roberto@gmail.com'),
	  ('Eva','eva@gmail.com'),('Felipe','felipe@gmail.com'),
      ('Ari','ari@gmail.com'),('Oscar','oscar@gmail.com'),
	  ('Hector','hector@gmail.com');

insert into students(student_name, student_mail)
values ('Carlos','carlos@gmail.com'),
	('Fran','fran@gmail.com'),('Jose','jose@gmail.com'),
	('Fernando','fernando@gmail.com'),('Ana','ana@gmail.com'),
	('Lucia','lucia@gmail.com'),('Junior','junior@gmail.com'),
	('Gelson','gelson@gmail.com'),('Marivel','marivel@gmail.com'),
	('Juls','juls@gmail.com'),('Lea','lea@gmail.com'),
	('Ambar','ambar@gmail.com'),('Dani','ainoa@gmail.com'),
	('Halter','halter@gmail.com'),('veronica', 'veronica@gmail.com');

insert into courses(course_name, course_professor_id, course_student_id)
values('English',
	  (select professor_id from professors where professor_mail = 'alicia@gmail.com'),
      (select student_id from students where student_mail = 'carlos@gmail.com')),
      ('English', 1,2),('English', 1,3),('English', 1,4),
      ('Math',2,5),('Math',2,6),('Math',2,7),('Math',2,8),('Math',2,14),('Math',2,3),
      ('POO',3,9),('POO',3,10),('POO',3,11),('POO',3,12),
      ('Ethics',4,12),('Ethics',4,13),('Ethics',4,14),('Ethics',4,15),
      ('Art',5,1),('Art',5,3),('Art',5,5),('Art',5,7),
      ('Mechanic',6,9),('Mechanic',6,11),('Mechanic',6,13),('Mechanic',6,15),('Mechanic',6,10),('Mechanic',6,12),
      ('Psychology',7,2),('Psychology',7,4),('Psychology',7,6),('Psychology',7,8),
      ('Art','6',8),('Psychology','3',12),('English','3',12)

insert into grades(grade_nota, grade_estudent_name, grade_course_name, grade_profe_name)
values(8,
	  (select student_name from students where student_mail = 'carlos@gmail.com'),
      'English',
      (select professor_name from professors where professor_mail = 'alicia@gmail.com')),
      (7, 'Fran','English','Alicia'), (9, 'Jose','English','Alicia'), (7, 'Fernando','English','Alicia'), 
      (7, 'Ana','Math','Roberto'), (6, 'Lucia','Math','Roberto'), (5, 'Junior','Math','Roberto'),(6, 'Gelson','Math','Roberto'), (9, 'Halter','Math','Roberto'), (8, 'Jose','Math','Roberto'),
      (7, 'Marivel','POO','Eva'), (6, 'Juls','POO','Eva'), (5, 'Lea','POO','Eva'),(6, 'Ambar','POO','Eva'),
      (9, 'Ambar','Ethics','Felipe'), (8, 'Dani','Ethics','Felipe'), (9, 'Halter','Ethics','Felipe'),(7, 'veronica','Ethics','Felipe'),
      (8, 'Carlos','Art','Ari'), (9, 'Jose','Art','Ari'), (8, 'Ana','Art','Ari'),(8, 'Junior','Art','Ari'),
      (7, 'Gelson','Mechanic','Oscar'), (6, 'Lea','Mechanic','Oscar'), (8, 'Dani','Mechanic','Oscar'),(7, 'veronica','Mechanic','Oscar'), (9, 'Juls','Mechanic','Oscar'), (8, 'Ambar','Mechanic','Oscar'),
      (8, 'Carlos','Psychology','Hector'), (9, 'Fernando','Psychology','Hector'), (8, 'Lucia','Psychology','Hector'),(7, 'Junior','Psychology','Hector')
      (7, 'Gelson','Art','Oscar'),(6, 'Ambar','Psychology','Eva'),(6, 'Ambar','English','Eva')