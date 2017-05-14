ALTER PROCEDURE insertSponsor
  AS
  BEGIN
    BEGIN TRY
      INSERT INTO sponsor VALUES (	'VMWare',	'Platinum Sponsor'	);
      INSERT INTO sponsor VALUES (	'Verizon Digital Media Services',	'Platinum Sponsor'	);
      INSERT INTO sponsor VALUES (	'Microsoft Corporation (GAP) (GAP Sponsor)',	'Platinum Sponsor'	);
      INSERT INTO sponsor VALUES (	'Tintri',	'Platinum Sponsor'	);
      INSERT INTO sponsor VALUES (	'Amazon Web Services, LLC',	'Gold Sponsor'	);
      INSERT INTO sponsor VALUES (	'Pyramid Analytics (GAP Sponsor)',	'Gold Sponsor'	);
      INSERT INTO sponsor VALUES (	'Pure Storage',	'Gold Sponsor'	);
      INSERT INTO sponsor VALUES (	'Profisee',	'Gold Sponsor'	);
      INSERT INTO sponsor VALUES (	'NetLib Security',	'Silver Sponsor'	);
      INSERT INTO sponsor VALUES (	'Melissa Data Corp.',	'Silver Sponsor'	);
      INSERT INTO sponsor VALUES (	'Red Gate Software',	'Silver Sponsor'	);
      INSERT INTO sponsor VALUES (	'SentryOne',	'Silver Sponsor'	);
      INSERT INTO sponsor VALUES (	'Hush Hush',	'Bronze Sponsor'	);
      INSERT INTO sponsor VALUES (	'COZYROC',	'Bronze Sponsor'	);
      INSERT INTO sponsor VALUES (	'SQLDocKit by Acceleratio Ltd.',	'Bronze Sponsor'	);
    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END