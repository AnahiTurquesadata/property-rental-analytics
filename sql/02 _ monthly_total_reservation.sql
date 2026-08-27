SELECT
  month_reservation,
  COUNT(booking_id) AS total_reservations
FROM
  `property-rental-analytics.rental_business.reservations_data`
GROUP BY
  month_reservation
ORDER BY
  total_reservations DESC;
