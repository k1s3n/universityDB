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
-- få ut vilka kurser student har fått betyg i och inte.

SELECT * FROM waiting_list;


SELECT * FROM register


























































































































-- se fristående kurser.
SELECT * FROM  course
WHERE institute_id = 'FREE'


-- se alla kurser med begränsade antal platser 
SELECT * FROM limit_course