-- Skapar en vy för "basic information"

CREATE VIEW basic_information AS
SELECT
    s.student_id AS idnr,
    s.name,
    p.name AS program,
    b.branch_id AS branch
FROM
    student s
JOIN program p ON s.program_id = p.program_id
LEFT JOIN branch b ON s.branch_id = b.branch_id;

-- Visar vyn "basic information"

SELECT * FROM basic_information;

CREATE VIEW finished_courses AS
SELECT
    