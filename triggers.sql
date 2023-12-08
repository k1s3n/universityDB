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


CREATE TRIGGER check_capacity_trigger
BEFORE INSERT ON register
FOR EACH ROW
EXECUTE FUNCTION check_capacity();








DROP TRIGGER IF EXISTS trigger_check_remaining_capacity ON university.register;