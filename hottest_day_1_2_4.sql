SELECT
    maxtemperaturef,
	zip
FROM
    weather
GROUP BY zip, maxtemperaturef
ORDER BY maxtemperaturef DESC;