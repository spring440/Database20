CREATE PROCEDURE insertRoles
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO roles(role) VALUES ('Presenter');
      INSERT INTO roles(role) VALUES ('Attendee');
      INSERT INTO roles(role) VALUES ('Organizer');
      INSERT INTO roles(role) VALUES ('Volunteer');
      INSERT INTO roles(role) VALUES ('Sponsor');
    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END