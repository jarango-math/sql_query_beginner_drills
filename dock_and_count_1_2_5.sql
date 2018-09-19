SELECT
	trips.start_station,
	stations.dockcount,
	COUNT(*) AS total_trips
FROM
	trips
JOIN
	stations
ON
	stations.name = trips.start_station
GROUP BY
	trips.start_station,
	stations.dockcount
ORDER BY
	stations.dockcount ASC