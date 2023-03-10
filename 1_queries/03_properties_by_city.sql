SELECT properties.id, properties.title, properties.cost_per_night, AVG(property_reviews.rating)
FROM properties
JOIN property_reviews ON property_id = properties.id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER by cost_per_night
LIMIT 10;