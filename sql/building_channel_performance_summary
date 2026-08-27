SELECT
  p.code_building,
  r.booking_channel,
  COUNT(r.booking_id) AS total_reservas,
  SUM(r.nights) AS total_noches_vendidas,
  ROUND(SUM(r.net_price), 2) AS facturacion_total,
  ROUND(AVG(r.net_price), 2) AS ticket_promedio,
  ROUND(SUM(r.net_price) / NULLIF(SUM(r.nights), 0), 2) AS precio_promedio_noche
FROM
  `property-rental-analytics.rental_business.reservations_data` AS r
INNER JOIN
  `property-rental-analytics.rental_business.properties_master` AS p
  ON r.property_id = p.property_id
GROUP BY
  p.code_building,
  r.booking_channel
ORDER BY
  p.code_building,
  facturacion_total DESC;
