DROP TABLE presentationTrackMapping;
DROP TABLE personRolesMapping;
DROP TABLE presentationSpeakerMapping;
DROP TABLE presentationEventMapping;
DROP TABLE sponsor;
DROP TABLE schedule;
DROP TABLE timeAssignment;
DROP TABLE track;
DROP TABLE room;
DROP TABLE person;
DROP TABLE event;
DROP TABLE presentation;
DROP TABLE roles;

CREATE TABLE person (
  personId INT PRIMARY KEY NOT NULL IDENTITY,
  firstName VARCHAR(200),
  lastName VARCHAR(200),
  streetAddress VARCHAR(200),
  city VARCHAR(200),
  postalCode VARCHAR(200),
  state VARCHAR(200),
  email VARCHAR(200)
);

CREATE TABLE roles (
  roleId INT PRIMARY KEY NOT NULL IDENTITY,
  role VARCHAR(200) NOT NULL
);

CREATE TABLE event (
  eventId INT PRIMARY KEY NOT NULL IDENTITY ,
  eventDate VARCHAR(200),
  name VARCHAR(200),
  city VARCHAR(200),
  region VARCHAR(200)
)

CREATE TABLE personRolesMapping (
  personId INT NOT NULL FOREIGN KEY REFERENCES person(personId),
  roleId INT NOT NULL FOREIGN KEY REFERENCES roles(roleId),
  UNIQUE (personId,roleId)
);


CREATE TABLE presentation (
  presentationId INT PRIMARY KEY NOT NULL IDENTITY,
  title VARCHAR(200),
  difficulty VARCHAR(200),
  event VARCHAR(200)
);

CREATE TABLE track (
  trackId INT PRIMARY KEY NOT NULL IDENTITY,
  trackName VARCHAR(200) NOT NULL,
);

CREATE TABLE presentationTrackMapping (
  presentationId INT NOT NULL FOREIGN KEY REFERENCES presentation(presentationId),
  trackId INT NOT NULL FOREIGN KEY REFERENCES track(trackId),
  UNIQUE (presentationId,trackId)
);

CREATE TABLE room (
  roomId INT NOT NULL PRIMARY KEY IDENTITY,
  maxOccupancy INT NOT NULL,
  roomNumber INT NOT NULL
);


CREATE TABLE sponsor (
  sponsorId INT NOT NULL IDENTITY PRIMARY KEY,
  name VARCHAR(200),
  sponsorLevel VARCHAR(200)
);

CREATE TABLE timeAssignment (
  timeAssignmentId INT PRIMARY KEY NOT NULL IDENTITY,
  timeAssignmentStart VARCHAR(200)
);

CREATE TABLE schedule (
  scheduleId INT NOT NULL IDENTITY PRIMARY KEY,
  presentationId INT FOREIGN KEY REFERENCES presentation(presentationId),
  eventId INT FOREIGN KEY REFERENCES event(eventId),
  roomId INT FOREIGN KEY REFERENCES room(roomId),
  timeAssignmentId INT FOREIGN KEY REFERENCES timeAssignment(timeAssignmentId),
  UNIQUE (eventId,roomId,timeAssignmentId)
);

CREATE TABLE presentationSpeakerMapping (
  presentationId INT FOREIGN KEY REFERENCES presentation(presentationId),
  personId INT FOREIGN KEY REFERENCES person(personId)
);

CREATE TABLE presentationEventMapping (
  presentationId INT FOREIGN KEY REFERENCES presentation(presentationId),
  eventId INT FOREIGN KEY REFERENCES event(eventId)
);