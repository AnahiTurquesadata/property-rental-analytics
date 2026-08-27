SELECT
  month_reservation,
  COUNT(booking_id) AS total_reservations,
  SUM(nights) AS total_nights_sold,
  ROUND(AVG(nights), 1) AS avg_nights_per_reservation
FROM
  `property-rental-analytics.rental_business.reservations_data`
GROUP BY
  month_reservation
ORDER BY
  total_reservations DESC;
