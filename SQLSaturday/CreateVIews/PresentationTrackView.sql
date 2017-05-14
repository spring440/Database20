DROP VIEW presentationTrackView;

CREATE VIEW presentationTrackView
  AS
  SELECT presentation.title, person.firstName, person.lastName, presentation.event, presentation.difficulty, track.trackName
  FROM (((presentation INNER JOIN presentationTrackMapping ON presentation.presentationId = presentationTrackMapping.presentationId)
  INNER JOIN track ON presentationTrackMapping.trackId = track.trackId)
  INNER JOIN presentationSpeakerMapping ON presentation.presentationId = presentationSpeakerMapping.presentationId)
  INNER JOIN person ON person.personId = presentationSpeakerMapping.personId;
