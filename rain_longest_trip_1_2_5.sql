WITH
	rainevent
AS (
SELECT
	events,
	zip
FROM
	weather
WHERE
	events='Rain'
)

SELECT
	rainevent.events,
	rainevent.zip,
	trips.zip_code,
	trips.duration
FROM
	rainevent
JOIN
	trips
ON
	rainevent.zip = trips.zip_code
ORDER BY duration DESC