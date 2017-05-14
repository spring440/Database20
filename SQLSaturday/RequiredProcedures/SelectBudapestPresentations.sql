ALTER PROCEDURE selectBudapestPresentations
  AS
  BEGIN
    SELECT * FROM presentationTrackView WHERE event = 'Budapest' ORDER BY trackName;
  END