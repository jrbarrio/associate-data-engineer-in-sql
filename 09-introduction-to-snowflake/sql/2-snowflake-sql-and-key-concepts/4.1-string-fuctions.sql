-- Convert status to lowercase

SELECT LOWER(status) FROM uber_request_data;

-- Convert pickup_point to uppercase

SELECT UPPER(pickup_point) FROM uber_request_data;

-- Complete the CONCAT function for columns pickup_point and status

SELECT CONCAT('Trip from ', pickup_point, ' was completed with status: ', status) AS trip_comment
FROM uber_request_data;