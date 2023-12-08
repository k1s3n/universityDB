CREATE OR REPLACE FUNCTION check_remaining_capacity()
RETURNS TRIGGER AS $$
DECLARE
    remaining_capacity INT;
BEGIN
    SELECT capacity INTO remaining_capacity
    FROM limit_course
    WHERE course_id = NEW.course_id;

    IF remaining_capacity > 0 THEN
        -- Space is available, register the student
        UPDATE limit_course
        SET capacity = capacity - 1
        WHERE course_id = NEW.course_id;

        RETURN NEW;
    ELSE
        -- Course is at full capacity, add student to waiting_list
        INSERT INTO waiting_list(course_id, student_id, position)
        VALUES (NEW.course_id, NEW.student_id, CURRENT_TIMESTAMP);

        RAISE NOTICE 'Course is at full capacity. Student added to waiting list.';
        RETURN NULL; -- Cancel the original INSERT
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_check_remaining_capacity
BEFORE INSERT ON register
FOR EACH ROW EXECUTE FUNCTION check_remaining_capacity();