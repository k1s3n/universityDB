-- Skapar en vy för "basic information"

CREATE VIEW basic_information AS
SELECT
    s.student_id AS idnr,
    s.name,
    p.name AS program,
    coalesce(b.branch_name, 'Not choosen')  AS branch
FROM
    student s
JOIN program p ON s.program_id = p.program_id
LEFT JOIN branch b ON s.branch_id = b.branch_id;

-- Visar vyn "basic information"

SELECT * FROM basic_information;

-- finished_courses
CREATE VIEW finished_courses AS
SELECT
    s.name AS Student,
    c.name,
    cc.grade_id AS betyg,
    cc.credits
FROM
    student s
JOIN completed_course cc ON s.student_id = cc.student_id
JOIN course c ON cc.course_id = c.course_id

--Visar vyn "finished_courses" 

SELECT * FROM finished_courses;

-- passed courses
CREATE VIEW passed_courses AS
SELECT
    s.name as student,
    c.name as Kurs,
    cc.credits as poäng
FROM
    student s
JOIN completed_course cc ON s.student_id = cc.student_id
JOIN course c ON cc.course_id = c.course_id
WHERE cc.grade_id IN ('3','4','5');

--Visar vyn passed_courses

SELECT * FROM passed_courses;



-- se alla registrerade och dom som står på reserv
CREATE VIEW registrations AS
SELECT
    s.name AS student,
    c.name AS kurs,
    'registered' AS status
FROM
    register r
    JOIN student s ON r.student_id = s.student_id
    JOIN course c ON r.course_id = c.course_id
UNION

SELECT
    s.name,
    c.name,
    'waiting' AS status
FROM
    waiting_list w
    JOIN student s ON w.student_id = s.student_id
    JOIN course c ON w.course_id = c.course_id;

-- Visar registrations

SELECT * FROM registrations


--Olästa obligatoriska kurser för varje student.

CREATE VIEW unread_mandatory AS
SELECT
    s.student_id AS student,
    s.name AS name,
    c.course_id AS course
FROM
    student s
JOIN
    branch b ON s.branch_id = b.branch_id
JOIN
    mandatory_course_branch mcb ON b.branch_id = mcb.branch_id
JOIN
    course c ON mcb.course_id = c.course_id
WHERE
    c.course_id NOT IN (
        SELECT
            cc.course_id
        FROM
            completed_course cc
        WHERE
            cc.student_id = s.student_id
    )
UNION
SELECT
    s.student_id as student,
    s.name AS name,
    mcp.course_id AS course
FROM
    student s
JOIN
    mandatory_course_program mcp ON s.program_id = mcp.program_id
WHERE
    mcp.course_id NOT IN (
        SELECT
            cc.course_id
        FROM
            completed_course cc
        WHERE
            cc.student_id = s.student_id
    );

--Visar vyn unread_mandatory
SELECT * FROM unread_mandatory ORDER BY name;
