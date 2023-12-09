--Kolla vilka program namn som tillhör vilket institut

SELECT i.institute_id, p.program_id, p.name FROM institution_program i
JOIN program  p on i.program_id = p.program_id;


SELECT * FROM branch
WHERE program_id = 'DAVM'


-- se vilka kurser som är obligatoriska för programmet "Tillämpad Matematik och Statistik"
SELECT p.name AS Program, c.name AS obligatoriska_kurser FROM mandatory_course_program mcp
JOIN course c ON c.course_id = mcp.course_id
JOIN program p ON mcp.program_id = p.program_id
WHERE p.name = 'Tillämpad Matematik och Statistik'


SELECT * FROM  course
WHERE institute_id = 'FREE'


SELECT * FROM waiting_list;
DELETE FROM waiting_list
WHERE course_id = 'LANG01'


DELETE FROM register
WHERE student_id = '041224-6666';



DELETE FROM register
WHERE course_id = 'LANG01';
SELECT * FROM register

UPDATE limit_course
SET capacity = 1
WHERE course_id = 'LANG01';

SELECT * FROM limit_course

SELECT * FROM completed_course

UPDATE completed_course
SET grade_id = 'u'
WHERE student_id = '691224-0001'


select 
ALTER TABLE completed_course
ADD COLUMN credits INT;



















































































































-- se fristående kurser.
SELECT * FROM  course
WHERE institute_id = 'FREE'


-- se alla kurser med begränsade antal platser 
SELECT * FROM limit_course