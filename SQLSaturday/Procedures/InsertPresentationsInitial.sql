/*
This procedure inserts the initial presentations
into the necessary tables as well as creates the
initial schedule using the information given
*/

ALTER PROCEDURE insertPresentationsInitial
  AS
  BEGIN
    BEGIN TRY

      DECLARE @Counter INT;
      DECLARE @TimeCounter INT;
      DECLARE @RoomCounter INT;
      SET @Counter = 0;
      SET @TimeCounter = 0;
      SET @RoomCounter = 0;
      DECLARE @Temp TABLE (id INT IDENTITY, title VARCHAR(200), firstName VARCHAR(50), lastName VARCHAR(50), difficulty VARCHAR(50), event VARCHAR(50))
      INSERT INTO @Temp VALUES (	'A dive into Data Quality Services'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'A Dynamic World Demands Dynamic SQL'	,	'Jeremiah'	,	'Peschka'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'A Dynamic World Demands Dynamic SQL'	,	'Jeremiah'	,	'Peschka'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Absolute Introductory Session on SQL Server 2014 In-Memory Optimized Databases (Hekaton)'	,	'Kevin'	,	'Goff'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'AlwaysOn: Improve reliability and reporting performance with one cool tech'	,	'Chris'	,	'Seferlis'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'An introduction to Data Mining'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'An Introduction to Database Design'	,	'Mohammad'	,	'Yusuf'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Autogenerating a process data warehouse'	,	'Kennie'	,	'Pontoppidan'	,	'Advanced'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Automate your daily checklist with PBM and CMS'	,	'John'	,	'Sterrett'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters'	,	'Thomas'	,	'Grohser'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters'	,	'Thomas'	,	'Grohser'	,	'Intermediate'	,	'kiyv'	);
        INSERT INTO @Temp VALUES (	'Automating Execution Plan Analysis'	,	'Joe'	,	'Chang'	,	'Advanced'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Automating Execution Plan Analysis'	,	'Joe'	,	'Chang'	,	'Advanced'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Automating SQL Server using PowerShell'	,	'Michael'	,	'Wharton'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Balanced Scorecards using SSRS'	,	'Sunil'	,	'Kadimdiwan'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Baselines and Performance Monitoring with PAL'	,	'Mike'	,	'Walsh'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Basic Database Design'	,	'John'	,	'Miner'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Basic Database Programming'	,	'John'	,	'Miner'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Become a BI Independent Consultant!'	,	'James'	,	'Serra'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Best Practices Document'	,	'Paresh'	,	'Motiwala'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Best Practices for Efficient SSRS Report Creation'	,	'Mickey'	,	'Stuewe'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Biggest Loser: Database Edition'	,	'John'	,	'Miner'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Building a BI Solution in the Cloud'	,	'Stacia'	,	'Misner'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Building an Effective Data Warehouse Architecture'	,	'James'	,	'Serra'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Building an Effective Data Warehouse Architecture with the cloud and MPP'	,	'James'	,	'Serra'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Bulk load and minimal logged inserts'	,	'David'	,	'Peter Hansen'	,	'Advanced'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Business Analytics with SQL Server & Power Map:Everything you want to know but were afraid to ask'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Challenges to designing financial warehouses, lessons learnt'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Change Data Capture in SQL Server 2008/2012'	,	'Kevin'	,	'Goff'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Changing Your Habits to Improve the Performance of Your T-SQL'	,	'Mickey'	,	'Stuewe'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments'	,	'Allan'	,	'Hirt and SIOS Technology'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments'	,	'Allan'	,	'Hirt'	,	'Non-Technical'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Coffee Break'	,	'SQLSatruday'	,	'364'	,	'Non-Technical'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Creating A Performance Health Repository - using MDW'	,	'Robert'	,	'Pearl'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Creating efficient and effective SSRS BI Solutions'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Creating efficient and effective SSRS BI Solutions'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Data Partitioning'	,	'John'	,	'Flannery'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Data Tier Application Testing with NUnit and Distributed Replay'	,	'John'	,	'Flannery'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Database design for mere developers'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Database design for mere developers'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Database Design: Solving Problems Before they Start!'	,	'Edward'	,	'Pollack'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Database Modeling and Design'	,	'Mohammad'	,	'Yusuf'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Database Virtualization and Drinking out of the Fire Hose'	,	'Michael'	,	'Corey'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'DAX and the tabular model'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'DBA FOR DUMMIES'	,	'Robert'	,	'Pearl'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Dealing With Difficult People'	,	'Gigi'	,	'Bell'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Development Lifecycle with SQL Server Data Tools and DACFx'	,	'John'	,	'Flannery'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Did You Vote Today? A DBAs Guide to Cluster Quorum'	,	'Allan'	,	'Hirt'	,	'Advanced'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Dimensional Modeling Design Patterns: Beyond Basics'	,	'Jason'	,	'Horner'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Dimensional Modeling Design Patterns: Beyond Basics'	,	'Jason'	,	'Horner'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Diving Into Query Execution Plans'	,	'Edward'	,	'Pollack'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Dynamic SQL: Writing Efficient Queries on the Fly'	,	'Edward'	,	'Pollack'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Easy Architecture Design for HA and DR'	,	'Brent'	,	'Ozar'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Enhancing your career: Building your personal brand'	,	'James'	,	'Serra'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Establishing a SLA'	,	'Thomas'	,	'Grohser'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'ETL not ELT! Common mistakes and misconceptions about SSIS'	,	'Paul'	,	'Rizza'	,	'Advanced'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Event Kickoff and Networking'	,	'SQLSaturday'	,	'364'	,	'Non-Technical'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Execution Plans: What Can You Do With Them?'	,	'Grant'	,	'Fritchey'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Faster, Better Decisions with Self Service Business Analytics'	,	'Sayed'	,	'Saeed'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Full Text Indexing Basics'	,	'John'	,	'Miner'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Get your Mining Model Predictions out to all'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Getting a job with Microsoft'	,	'Paul'	,	'Rizza'	,	'Non-Technical'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Graph Databases for SQL Server Professionals'	,	'Stéphane'	,	'Fréchette'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Hacking Exposé - Using SSL to Protect SQL Connections'	,	'Chris'	,	'Bell'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Hacking the SSIS 2012 Catalog'	,	'Andy'	,	'Leonard'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Hidden in plain sight: master your tools'	,	'Varsham'	,	'Papikian'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Highly Available SQL Server in Windows Azure IaaS'	,	'David'	,	'Bermingham'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'How to Make a LOT More Money as a Consultant'	,	'James'	,	'Serra'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'How to Think Like the Engine'	,	'Brent'	,	'Ozar'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Hybrid Cloud Scenarios with SQL Server 2014'	,	'George'	,	'Walters'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Hybrid Solutions: The Future of SQL Server Disaster Recovery'	,	'Allan'	,	'Hirt'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Implementing Data Warehouse Patterns with the Microsoft BI Tools'	,	'Kevin'	,	'Goff'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Inroduction to Triggers'	,	'Jack'	,	'Corbett'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Integrating Reporting Services with SharePoint'	,	'Kevin'	,	'Goff'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Integration Services (SSIS) for the DBA'	,	'David'	,	'Peter Hansen'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Introducing Power BI'	,	'Stacia'	,	'Misner'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Introduction to Database Recovery'	,	'John'	,	'Flannery'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Introduction to High Availability with SQL Server'	,	'John'	,	'Sterrett'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Introduction to Powershell for DBA'	,	'John'	,	'Sterrett'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Introduction to SQL Server - Part 1'	,	'Brandon'	,	'Leach'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Introduction to SQL Server - Part 2'	,	'Brandon'	,	'Leach'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Is That A Failover Cluster On Your Laptop/Desktop?'	,	'Allan'	,	'Hirt'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Leaving the Windows Open'	,	'Jeremiah'	,	'Peschka'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Lunch Break'	,	'SQLSaturday'	,	'364'	,	'Non-Technical'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Lunchtime Keynote'	,	'SQLSaturday'	,	'364'	,	'Non-Technical'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Master Data Services Best Practices'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Master Data Services Disaster Recovery'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Mind your language!! Cursors are a dirty word'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Modern Data Warehousing'	,	'James'	,	'Serra'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Monitoring Server health via Reporting Services dashboards'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Monitoring SQL Server using Extended Events'	,	'Hilary'	,	'Cotter'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Multidimensional vs Tabular - May the Best Model Win'	,	'Stacia'	,	'Misner'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Murder They Wrote'	,	'Jason'	,	'Brimhall'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Never Have to Say "Mayday!!!" Again'	,	'Mike'	,	'Walsh'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Now you see it! Now you don’t! Conjuring many reports utilizing only one SSRS report.'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Optimal Infrastructure Strategies for Cisco UCS, Nexus and SQL Server'	,	'Kevin'	,	'Schenega'	,	'Non-Technical'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Optimizing Protected Indexes'	,	'Chris'	,	'Bell'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Partitioning as a design pattern'	,	'Kennie'	,	'Pontoppidan'	,	'Advanced'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Power BI Components in Microsofts Self-Service BI Suite'	,	'Todd'	,	'Chittenden'	,	'Beginner'	,	'New York'	);
        INSERT INTO @Temp VALUES (	'Power to the people!!'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'PowerShell Basics for SQLServer'	,	'Michael'	,	'Wharton'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'PowerShell for the Reluctant DBA / Developer'	,	'Jason'	,	'Horner'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Prevent Recovery Amnesia – Forget the Backups'	,	'Chris'	,	'Bell'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Query Optimization Crash Course'	,	'Edward'	,	'Pollack'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Rapid Application Development with Master Data Services'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Recovery and Backup for Beginners'	,	'Mike'	,	'Hillwig'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Reduce, Reuse, Recycle: Automating Your BI Framework'	,	'Stacia'	,	'Misner'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Replicaton Technologies'	,	'Hilary'	,	'Cotter'	,	'Advanced'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Reporting Services for Mere DBAs'	,	'Jason'	,	'Brimhall'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Scaling with SQL Server Service Broker'	,	'Hilary'	,	'Cotter'	,	'Advanced'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Scaling with SQL Server Service Broker'	,	'Hilary'	,	'Cotter'	,	'Advanced'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Self-Service Data Integration with Power Query'	,	'Stéphane'	,	'Fréchette'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Shortcuts to Building SSIS in .Net'	,	'Paul'	,	'Rizza'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'So You Want To Be A Consultant?'	,	'Allan'	,	'Hirt'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL anti patterns'	,	'Kennie'	,	'Pontoppidan'	,	'Advanced'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server 2012/2014 Columnstore index'	,	'Kevin'	,	'Goff'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server 2012/2014 Performance Tuning All Up'	,	'George'	,	'Walters'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server 2014 Data Access Layers'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server 2014 New Features'	,	'George'	,	'Walters'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server AlwaysOn Availability Groups'	,	'George'	,	'Walters'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server and the Cloud'	,	'David'	,	'Peter Hansen'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server Compression and what it can do for you'	,	'Jason'	,	'Brimhall'	,	'Advanced'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server Reporting Services 2014 on Steroids!!'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server Reporting Services Best Practices'	,	'Steve'	,	'Simon'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server Reporting Services, attendees choose'	,	'Kevin'	,	'Goff'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server Storage Engine under the hood'	,	'Thomas'	,	'Grohser'	,	'Intermediate'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SQL Server Storage internals: Looking under the hood.'	,	'Brandon'	,	'Leach'	,	'Advanced'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'SSIS 2014 Data Flow Tuning Tips and Tricks'	,	'Andy'	,	'Leonard'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Standalone to High-Availability Clusters over Lunch—with Time to Spare'	,	'Carl'	,	'Berglund'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Stress testing SQL Server'	,	'Hilary'	,	'Cotter'	,	'Advanced'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Table partitioning for Azure SQL Databases'	,	'John'	,	'Miner'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'Testing'	,	'Melissa'	,	'Riley'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'The future of the data professional'	,	'Adam'	,	'Jorgensen'	,	'Beginner'	,	'Kiyv'	);
        INSERT INTO @Temp VALUES (	'The Quest for the Golden Record:MDM Best Practices'	,	'Dennis'	,	'Messina'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'The Quest to Find Bad Data With Data Profiling'	,	'Richie'	,	'Rump'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'The Spy Who Loathed Me - An Intro to SQL Security'	,	'Chris'	,	'Bell'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Tired of the CRUD? Automate it!'	,	'Jack'	,	'Corbett'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Top 5 Ways to Improve Your triggers'	,	'Aaron'	,	'Bertrand'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Tricks that have saved my bacon'	,	'Greg'	,	'Moore'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'T-SQL : Bad Habits & Best Practices'	,	'Aaron'	,	'Bertrand'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'T-SQL for Application Developers - Attendees chose'	,	'Kevin'	,	'Goff'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Tune Queries By Fixing Bad Parameter Sniffing'	,	'Grant'	,	'Fritchey'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Using Extended Events in SQL Server'	,	'Jason'	,	'Brimhall'	,	'Advanced'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Watch Brent Tune Queries'	,	'Brent'	,	'Ozar'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'What every SQL Server DBA needs to know about Windows Server 10 Technical Preview'	,	'David'	,	'Bermingham'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'What exactly is big data and why should I care?'	,	'James'	,	'Serra'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'What is it like to work for Microsoft?'	,	'James'	,	'Serra'	,	'Beginner'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'What’s new in SQL Server Integration Services 2012'	,	'Kevin'	,	'Goff'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Why do we shun using tools for DBA job?'	,	'Paresh'	,	'Motiwala'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'Why OLAP? Building SSAS cubes and benefits of OLAP'	,	'Kevin'	,	'Goff'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO @Temp VALUES (	'You''re Doing It Wrong!!'	,	'Mike'	,	'Walsh'	,	'Intermediate'	,	'Budapest'	);
        INSERT INTO person(firstName, lastName) SELECT DISTINCT firstName, lastName FROM @Temp;
        INSERT INTO personRolesMapping(personId, roleId) SELECT personId, (SELECT roleId FROM roles WHERE role='Presenter') FROM person WHERE personId > 100;
        INSERT INTO presentation(title, difficulty, event) SELECT title, difficulty, event FROM @Temp;

        /*
        This outer loop inserts information into mapping tables and iterates over each
        presentation.
        */
        WHILE(@Counter < (SELECT COUNT(presentationId) FROM presentation))
          BEGIN
            INSERT INTO presentationTrackMapping(presentationId, trackId) VALUES ((SELECT presentationId FROM presentation WHERE presentation.presentationId = @Counter + 1), (SELECT TOP 1 track.trackId FROM track ORDER BY NEWID()));
            INSERT INTO presentationSpeakerMapping(presentationId, personId) VALUES ((SELECT presentationId FROM presentation WHERE presentation.presentationId = @Counter + 1),(SELECT personId FROM person WHERE firstName = (SELECT firstName FROM @Temp WHERE id=(@Counter + 1)) AND lastName = (SELECT lastName FROM @Temp WHERE id = (@Counter + 1))));
            INSERT INTO presentationEventMapping(presentationId, eventId) VALUES ((SELECT presentationId FROM presentation WHERE presentation.presentationId = @Counter + 1), (SELECT eventId FROM event WHERE event.city = (SELECT TOP 1 event FROM presentation WHERE presentationId = (@Counter + 1))));
            DECLARE @InsertionSuccessful INT;
            SET @InsertionSuccessful = 0;
            SET @TimeCounter = 0;

            /*
            This nested while loop clause is for creating the initial schedule
            For each presentation, I check for the next available time and see what
            room is available during that time at the event where the presentation
            is happening. I then insert a new item in the schedule table which contains
            the presentation, the event location, the room number and the time it will
            be held to make sure there are no overlaps.
            */
            WHILE(@TimeCounter < (SELECT COUNT(*) FROM timeAssignment) AND @InsertionSuccessful = 0)
              BEGIN
                SET @RoomCounter = 0;
                WHILE(@RoomCounter < (SELECT COUNT(*) FROM room) AND @InsertionSuccessful = 0)
                BEGIN
                  IF NOT EXISTS (SELECT * FROM schedule WHERE roomId=(@RoomCounter + 1) AND timeAssignmentId= (@TimeCounter + 1) AND eventId=(SELECT TOP 1 eventId FROM presentationEventMapping WHERE presentationId = (@Counter + 1)))
                    BEGIN
                      INSERT INTO schedule(presentationId, eventId, roomId, timeAssignmentId)
                      VALUES ((SELECT presentationId FROM presentation WHERE presentation.presentationId = @Counter + 1),
                      (SELECT TOP 1 eventId FROM presentationEventMapping WHERE presentationId = (@Counter + 1)),
                              (@RoomCounter + 1), (@TimeCounter+1));
                      SET @InsertionSuccessful = 1;
                    END
                  SET @RoomCounter = @RoomCounter + 1;
                END
              SET @TimeCounter = @TimeCounter + 1
              END
            SET @Counter = @Counter + 1;
            SET @InsertionSuccessful = 0;
          END
    END TRY
    BEGIN CATCH
      SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
  END
