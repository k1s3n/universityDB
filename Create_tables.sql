CREATE TABLE institute (
    institute_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(250) UNIQUE
);


CREATE TABLE program (
    program_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(250) UNIQUE
);

CREATE TABLE course (
    course_id VARCHAR(6) PRIMARY KEY,
    name VARCHAR(250) UNIQUE,
    credits INT,
    institute_id VARCHAR(10),
    FOREIGN KEY (institute_id) REFERENCES institute(institute_id)
);




CREATE TABLE branch (
    branch_id VARCHAR(250) PRIMARY KEY,
    program_id VARCHAR(10),
    FOREIGN KEY (program_id) REFERENCES program(program_id)
);

CREATE TABLE student (
    student_id VARCHAR(11) PRIMARY KEY,
    name VARCHAR(250),
    program_id VARCHAR(10) NOT NULL,
    branch_id VARCHAR(250),
    FOREIGN KEY (program_id) REFERENCES program(program_id),
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id),

    CONSTRAINT student_id CHECK (student_id SIMILAR TO '^[0-9]{8}-[0-9]{4}$')
);

CREATE TABLE classified (
    classification_id VARCHAR(250),
    course_id VARCHAR(6),
    FOREIGN KEY(course_id) REFERENCES course(course_id),
    PRIMARY KEY (classification_id, course_id)
);

CREATE TABLE prerequisite (
    prerequisite_id VARCHAR(6),
    course_id VARCHAR(6),
    FOREIGN KEY(prerequisite_id) REFERENCES course(course_id),
    FOREIGN KEY(course_id) REFERENCES course(course_id),
    PRIMARY KEY(prerequisite_id, course_id)
);

CREATE TABLE limit_course(
    course_id VARCHAR(6),
    capacity INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    PRIMARY KEY(course_id, capacity),
    CHECK (capacity >=0 AND capacity <=999)
);

CREATE TABLE waiting_list(
    course_id VARCHAR(6),
    student_id VARCHAR(11),
    position TIMESTAMP,
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    PRIMARY KEY (course_id, student_id, position)
);

CREATE TABLE register(
    course_id VARCHAR(6),
    student_id VARCHAR(11),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    PRIMARY KEY (course_id, student_id)
);

CREATE TABLE completed_course(
    course_id VARCHAR(6),
    student_id VARCHAR(11),
    grade_id VARCHAR(1),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    PRIMARY KEY (course_id, student_id, grade_id),
    CHECK (grade_id = 'u' OR grade_id SIMILAR TO '^[3-5]$')
);

CREATE TABLE institution_program (
    institute_id VARCHAR(10),
    program_id VARCHAR(10),
    FOREIGN KEY (institute_id) REFERENCES institute(institute_id),
    FOREIGN KEY (program_id) REFERENCES program(program_id),
    PRIMARY KEY (institute_id, program_id)
);

CREATE TABLE mandatory_course_program(
    course_id VARCHAR(6),
    program_id VARCHAR(10),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (program_id) REFERENCES program(program_id),
    PRIMARY KEY(course_id, program_id)
);

CREATE TABLE recommended_course_branch(
    course_id VARCHAR(6),
    branch_id VARCHAR(250),
    program_id VARCHAR(10),
    FOREIGN KEY(course_id) REFERENCES course(course_id),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id),
    FOREIGN KEY(program_id) REFERENCES program(program_id),
    PRIMARY KEY(course_id, branch_id, program_id)
);

CREATE TABLE mandatory_course_branch(
    course_id VARCHAR(6),
    branch_id VARCHAR(250),
    program_id VARCHAR(10),
    FOREIGN KEY(course_id) REFERENCES course(course_id),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id),
    FOREIGN KEY(program_id) REFERENCES program(program_id),
    PRIMARY KEY(course_id, branch_id, program_id)
);
