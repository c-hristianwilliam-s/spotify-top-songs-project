--TABLE CREATED
CREATE TABLE Spotify_final_dataset(
	"Position" NUMERIC,
	"Artist Name" TEXT,
	"Song Name" TEXT,
	"Days" NUMERIC,
	"Top 10(xTimes)" NUMERIC,
	"Peak Position" NUMERIC,
	"Peak Position (xTimes)" NUMERIC,
	"Peak Streams" NUMERIC,
	"Total Streams" NUMERIC
)

--How many artists have top songs?
SELECT COUNT(DISTINCT "Artist Name") FROM "Spotify_final_dataset";

--Total streams
SELECT SUM("Total Streams") FROM "Spotify_final_dataset";

--Songs that hit #1 and how many times it hit #1
SELECT "Artist Name", "Song Name", "Peak Position (xTimes)" FROM "Spotify_final_dataset"
WHERE "Peak Position" = 1;

--Which song had the most streams
SELECT "Artist Name", "Song Name", "Total Streams" FROM "Spotify_final_dataset"
ORDER BY "Total Streams" DESC LIMIT 1;

--Which song had the least streams
SELECT "Artist Name", "Song Name", "Total Streams" FROM "Spotify_final_dataset"
ORDER BY "Total Streams" ASC LIMIT 1;

--Which song had the most peak streams
SELECT "Artist Name", "Song Name", "Peak Streams" FROM "Spotify_final_dataset"
ORDER BY "Peak Streams" DESC LIMIT 1;

--Which song had the least peak streams
SELECT "Artist Name", "Song Name", "Peak Streams" FROM "Spotify_final_dataset"
ORDER BY "Peak Streams" ASC LIMIT 1;

--Which artist has the most songs in the top songs list
SELECT "Artist Name", COUNT("Artist Name") FROM "Spotify_final_dataset" 
GROUP BY "Artist Name"
ORDER BY COUNT("Artist Name") DESC LIMIT 1;

--Which artist has the least songs in the top songs list
SELECT "Artist Name", COUNT("Artist Name") FROM "Spotify_final_dataset" 
GROUP BY "Artist Name"
ORDER BY COUNT("Artist Name") ASC LIMIT 1;

--Which artists had multiple songs in the top 10.
SELECT "Artist Name", COUNT("Artist Name") FROM "Spotify_final_dataset"
WHERE "Top 10(xTimes)" > 1 GROUP BY "Artist Name"
ORDER BY "Artist Name";

--Which song was in the top 10 the most amount of times
SELECT "Song Name" FROM "Spotify_final_dataset" ORDER BY "Top 10(xTimes)" DESC LIMIT 1;

--Which song was in the top 10 the least amount of times
SELECT "Song Name" FROM "Spotify_final_dataset" ORDER BY "Top 10(xTimes)" ASC LIMIT 1;

--Which of the songs at the top has been out for the longest
SELECT "Artist Name", "Song Name", "Days" FROM "Spotify_final_dataset" 
ORDER BY "Days" DESC LIMIT 1;

--Which songs contain the word "Love" it
SELECT "Song Name" FROM "Spotify_final_dataset" WHERE "Song Name" LIKE '%love%'
OR "Song Name" LIKE '%Love';

--Top songs where the artist is SZA and their position
SELECT "Song Name", "Position" FROM "Spotify_final_dataset" WHERE "Artist Name" = 'SZA ';






