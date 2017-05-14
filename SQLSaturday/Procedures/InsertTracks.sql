CREATE PROCEDURE insertTracks
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO track(trackName) VALUES ('Big Data');
      INSERT INTO track(trackName) VALUES ('Sessions For Beginners');
      INSERT INTO track(trackName) VALUES ('RDBMS Security');
      INSERT INTO track(trackName) VALUES ('Databases In the Cloud');
      INSERT INTO track(trackName) VALUES ('Enterprise Database Technologies');
    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END