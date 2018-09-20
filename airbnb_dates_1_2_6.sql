SELECT
 last_review,
 AVG(price) as avg_price
FROM
	listings
GROUP BY last_review
ORDER BY avg_price
--Theoritaclly this would give you and estimate on average prices on the date of review
-- But no more info can be gathered since the review dates are so scattered
--To answer the question, Summer month are the most expensive, Winter months are the cheapest
--Unicorporated areas have the most listings
--But city of scotts valley has a lower availability, meaning properties are filled more often