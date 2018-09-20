SELECT
 neighbourhood,
 COUNT(*) as number_listings,
 AVG(availability_365) as average_availability
FROM
	listings
GROUP BY neighbourhood
--Unicorporated areas have the most listings
--But city of scotts valley has a lower availability, meaning properties are filled more often