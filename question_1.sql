SELECT SUM("staff numbers") AS total_uk_staff
FROM dim_stores
WHERE country_code = 'GB'

