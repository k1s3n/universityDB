--Kolla vilka program namn som tillhör vilket institut

SELECT i.institute_id, p.program_id, p.name FROM institution_program i
JOIN program  p on i.program_id = p.program_id;


SELECT * FROM branch
WHERE program_id = 'DAVM'