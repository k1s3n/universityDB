CREATE OR REPLACE FUNCTION check_capacity()
RETURNS TRIGGER AS $$
DECLARE
    current_capacity INT;
    max_capacity INT;
    is_already_registered BOOLEAN;
BEGIN

    SELECT TRUE INTO is_already_registered
    FROM register
    WHERE course_id = NEW.course_id AND student_id = NEW.student_id;

    -- Om studenten redan är registrerad, avbryt och returnera NULL
    IF is_already_registered THEN
        RAISE NOTICE 'Student already registered for the course.';
        RETURN NULL;
    END IF;

    -- Hämta aktuell kapacitet för kursen
    SELECT COUNT(*) INTO current_capacity
    FROM register
    WHERE course_id = NEW.course_id;

    -- Hämta maxkapacitet för kursen
    SELECT capacity INTO max_capacity
    FROM limit_course
    WHERE course_id = NEW.course_id;

    -- Skriv ut värden för diagnos
    RAISE NOTICE 'Current Capacity: %, Max Capacity: %', current_capacity, max_capacity;

    -- Kontrollera om det finns plats i kursen
    IF current_capacity < max_capacity THEN
        RETURN NEW;
    ELSE
        -- Lägg till studenten i waiting_list-tabellen
        INSERT INTO waiting_list(course_id, student_id, position)
        VALUES (NEW.course_id, NEW.student_id, CURRENT_TIMESTAMP);
    END IF;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

--Flyttar äldsta till register ifall man tar bort en registerat studen på en kurs
CREATE TRIGGER check_capacity_trigger
BEFORE INSERT ON register
FOR EACH ROW
EXECUTE FUNCTION check_capacity();


CREATE OR REPLACE FUNCTION move_from_waiting_list()
RETURNS TRIGGER AS $$
DECLARE
    waiting_student RECORD;
BEGIN
    -- Hämta den äldsta (första) studenten från waiting_list för den aktuella kursen
    SELECT * INTO waiting_student
    FROM waiting_list
    WHERE course_id = OLD.course_id
    ORDER BY position
    LIMIT 1;

    -- Om det finns en student i waiting_list, flytta den till register
    IF FOUND THEN
        -- Ta bort studenten från waiting_list
        DELETE FROM waiting_list
        WHERE course_id = OLD.course_id AND student_id = waiting_student.student_id;

        -- Lägg till studenten i register
        INSERT INTO register(course_id, student_id)
        VALUES (waiting_student.course_id, waiting_student.student_id);
    END IF;

    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER move_from_waiting_list_trigger
AFTER DELETE ON register
FOR EACH ROW
EXECUTE FUNCTION move_from_waiting_list();





DROP TRIGGER IF EXISTS "NAMNET" ON university.register;