CREATE PROCEDURE insertTimeAssignment
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('6 AM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('7 AM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('8 AM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('9 AM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('10 AM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('11 AM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('12 PM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('1 PM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('2 PM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('3 PM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('4 PM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('5 PM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('6 PM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('7 PM');
      INSERT INTO timeAssignment(timeAssignmentStart) VALUES ('8 PM');
    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END