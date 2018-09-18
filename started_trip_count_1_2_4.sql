SELECT
    start_station,
	count(start_station) as start_station_count
FROM
    trips
GROUP BY start_station
ORDER BY start_station_count DESC