SELECT
    AVG(duration) as average_duration,
	end_station
FROM
    trips
GROUP BY end_station