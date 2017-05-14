ALTER PROCEDURE insertPresentation @SpeakerName VARCHAR(200), @Presentation VARCHAR(200)
  AS
  BEGIN
    DECLARE @FirstName VARCHAR(200);
    DECLARE @LastName VARCHAR(200);
    DECLARE @Name VARCHAR(200);
    DECLARE @personID INT;
    DECLARE @Counter INT;
    DECLARE @HasSpace INT;
    SET @Name = (SELECT RTRIM(@SpeakerName));
    SET @HasSpace = 0;
    SET @Counter = 1;
    WHILE(@Counter <= LEN(@Name)-1 AND @HasSpace = 0)
      BEGIN
        IF(SUBSTRING(@Name, @Counter,1) = ' ')
          BEGIN
            SET @HasSpace = 1;
          END
        SET @Counter = @Counter + 1;
      END
    IF(@HasSpace = 1)
      BEGIN
      SET @FirstName = SUBSTRING(@Name, 1, CHARINDEX(' ', @Name) - 1);
      SET @LastName = SUBSTRING(@Name, CHARINDEX(' ', @Name) + 1, LEN(@Name) - CHARINDEX(' ', @Name));
      IF NOT EXISTS(SELECT * FROM person WHERE firstName = @FirstName AND lastName = @LastName)
        BEGIN
          INSERT INTO person(firstName,lastName) VALUES (@FirstName,@LastName);
          SET @personID = (SELECT TOP 1 personId FROM person WHERE firstName = @FirstName AND lastName = @LastName);
          INSERT INTO personRolesMapping(personId, roleId) VALUES (@personID,
                                                                   (SELECT roleId FROM roles WHERE role='Presenter'));
          INSERT INTO personRolesMapping(personId, roleId) VALUES (@personID,
                                                                   (SELECT roleId FROM roles WHERE role='Attendee'));
        END
      END
    ELSE
      BEGIN
        SET @FirstName = @Name;
        IF NOT EXISTS(SELECT * FROM person WHERE firstName = @FirstName AND lastName IS NULL)
        BEGIN
          INSERT INTO person(firstName,lastName) VALUES (@FirstName,NULL);
          SET @personID = (SELECT TOP 1 personId FROM person WHERE (firstName = @FirstName AND lastName IS NULL));
          INSERT INTO personRolesMapping(personId, roleId) VALUES (@personID,
                                                                   (SELECT roleId FROM roles WHERE role='Presenter'));
          INSERT INTO personRolesMapping(personId, roleId) VALUES (@personID,
                                                                   (SELECT roleId FROM roles WHERE role='Attendee'));
        END
      END
    SET @personID = (SELECT TOP 1 personId FROM person WHERE firstName = @FirstName AND lastName = @LastName);
    INSERT INTO presentation(title) VALUES (@Presentation);
    INSERT INTO presentationSpeakerMapping(presentationId, personId) VALUES ((SELECT TOP 1 presentationId FROM presentation WHERE title = @Presentation),
    @personID);
  END