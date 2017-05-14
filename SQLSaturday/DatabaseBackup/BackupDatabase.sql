USE s17guest20;
GO
BACKUP DATABASE s17guest20
TO DISK = 'C:\Users\Asad\Documents\CSUN\COMP440\s17guest20.Bak'
   WITH FORMAT,
      MEDIANAME = 'AsadSQLSERVER',
      NAME = 's17guest20 backup';
GO