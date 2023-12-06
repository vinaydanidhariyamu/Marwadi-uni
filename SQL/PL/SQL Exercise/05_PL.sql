-- Write a trigger to restrict user form using the table on ‘Sunday’.
--
CREATE TABLE C_AREA (RADIUS NUMBER (5), AREA NUMBER (14,2));

CREATE TRIGGER TRG_C_AREA
BEFORE INSERT OR UPDATE OR DELETE
ON C_AREA
FOR EACH ROW
BEGIN
    IF TO_CHAR(SYSDATE,'DAY')='SUNDAY' THEN
        RAISE_APPLICATION_ERROR(-20001,'TABLE C_AREA IS NOT ACCESSIBLE ON SUNDAY');
    END IF;
END;
/
-- Table created.
-- Trigger created.