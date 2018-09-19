SELECT
	stations.name,
	status.station_id,
	COUNT(CASE WHEN status.docks_available=0 THEN 1 END) full_count
FROM
	stations
JOIN
	status
ON
	stations.station_id = status.station_id
GROUP BY
	stations.name,status.station_id
ORDER BY
	full_count ASC