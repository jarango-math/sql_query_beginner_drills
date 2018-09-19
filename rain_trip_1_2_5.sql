WITH rainy as
(
	SELECT
		DATE(date) weather_date
	FROM
		weather
	WHERE
		events = 'Rain'
	GROUP BY 1
),
rain_trips as
(
	SELECT
		trip_id,
		duration,
		DATE(trips.start_date) rain_trip_date
	FROM
		trips
	JOIN
		rainy
	ON
		rainy.weather_date = DATE(trips.start_date)
	ORDER BY duration DESC
)
SELECT
	rain_trips.rain_trip_date,
	max(duration) max_duration
FROM
	rain_trips
GROUP BY 1
ORDER BY max_duration DESC