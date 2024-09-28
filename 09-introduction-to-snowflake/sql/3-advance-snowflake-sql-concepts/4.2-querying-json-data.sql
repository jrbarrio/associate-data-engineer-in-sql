SELECT
  name,
  categories,
  -- Select WheelchairAccessible from attributes converting it to STRING
  attributes:WheelchairAccessible::STRING AS wheelchair_accessible,
  -- Select Saturday, Sunday from hours converting it to STRING
  (hours:Saturday::STRING IS NOT NULL OR hours:Sunday::STRING IS NOT NULL) AS open_on_weekend
FROM
  yelp_business_data


  SELECT
  name,
  categories,
  -- Select WheelchairAccessible from attributes converting it to STRING
  attributes:WheelchairAccessible::STRING AS wheelchair_accessible,
  -- Select Saturday, Sunday from hours converting it to STRING
  (hours:Saturday::STRING IS NOT NULL OR hours:Sunday::STRING IS NOT NULL) AS open_on_weekend
FROM
  yelp_business_data
WHERE
	-- Filter where wheelchair_accessible is 'True' and open_on_weekend is 'true'
	wheelchair_accessible = 'True' and open_on_weekend = 'true'
    -- Filter further where categories is having Italian in it
    and categories like '%Italian%'