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



-- få ut vilka kurser student har fått betyg i och inte.
SELECT student.name, mcp.course_id, cc.grade_id FROM mandatory_course_program mcp
LEFT JOIN student ON mcp.program_id = student.program_id
LEFT JOIN completed_course cc ON student.student_id = cc.student_id AND mcp.course_id = cc.course_id
WHERE student.name = 'Kristian Nilsson'


-- se fristående kurser.
SELECT * FROM  course
WHERE institute_id = 'FREE'

 SELECT * FROM limit_course