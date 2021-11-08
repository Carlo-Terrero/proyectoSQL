-- The average grade that is given by each professor
-- La nota media que da cada profesor
SELECT AVG(grade_nota) as 'Media de notas', grade_profe_name as 'Profesor'
from grades
group by grade_profe_name

-- The top grades for each student
-- Las mejores calificaciones para cada estudiante
select grade_estudent_name 'Estudiante' , max(grade_nota) as 'mejor nota'
from grades
group by grade_estudent_name 
order by max(grade_nota) desc

-- Group students by the courses that they are enrolled in
-- Agrupar a los estudiantes por los cursos en los que están inscritos
select course_name 'Curso', count(* ) 'Num alumnnos'
from courses
group by course_name

-- Create a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course
-- Cree un informe resumido de los cursos y sus calificaciones promedio, ordenados por el curso más desafiante (curso con la calificación promedio más baja) al curso más fácil
select grade_course_name 'curso', avg(grade_nota) 'nota media'
from grades
group by grade_course_name
order by avg(grade_nota) asc

-- Finding which student and professor have the most courses in common
-- Encontrar qué estudiante y profesor tienen más cursos en común
select * from courses;
select * from professors;

select count(course_student_id), course_student_id, course_professor_id 
from courses
group by course_name
order by course_name


select course_name 'Curso', count(* ) 'Num alumnnos', course_professor_id
from courses
group by course_name

-- Unimos las 3 tablas
select s.student_name, p.professor_name, c.course_name
from courses c
	left join (
		select student_name, student_id
        from students
        order by student_id
    ) as s
    on student_id = course_student_id
    left join (
		select professor_name, professor_id
        from professors
        order by professor_id
    ) as p
    on professor_id = course_professor_id
    
    
select s.student_name, p.professor_name, c.course_name 
from courses c
	left join (
		select student_name, student_id
        from students
        order by student_id
    ) as s
    on s.student_id = c.course_student_id
    left join (
		select professor_name, professor_id
        from professors
        order by professor_id
    ) as p
    on p.professor_id = c.course_professor_id
-- group by course_name
order by course_name

select course_name, count(course_name)
from courses
group by course_name

