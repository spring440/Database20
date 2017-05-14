ALTER PROCEDURE insertEvent
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO event VALUES (	'5/6/2017',	'SQLSaturday #626 - Budapest 2017',	'Budapest',	'Europe/Middle East/Africa'	);
INSERT INTO event VALUES (	'5/6/2017',	'SQLSaturday #615 - Baltimore 2017',	'Baltimore',	'Canada/US'	);
INSERT INTO event VALUES (	'5/13/2017',	'SQLSaturday #608 - Bogota 2017',	'Bogota',	'Latin America'	);
INSERT INTO event VALUES (	'5/20/2017',	'SQLSaturday #616 - Kyiv 2017',	'Kiyv',	'Europe/Middle East/Africa'	);
INSERT INTO event VALUES (	'5/20/2017',	'SQLSaturday #588 - New York City 2017',	'New York',	'Canada/US'	);
INSERT INTO event VALUES (	'5/27/2017',	'SQLSaturday #630 - Brisbane 2017',	'Brisbane',	'Asia Pacific'	);
INSERT INTO event VALUES (	'5/27/2017',	'SQLSaturday #599 - Plovdiv 2017',	'Plovdiv',	'Europe/Middle East/Africa'	);
INSERT INTO event VALUES (	'6/3/2017',	'SQLSaturday #638 - Philadelphia 2017',	'Philadelphia',	'Canada/US'	);

    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END