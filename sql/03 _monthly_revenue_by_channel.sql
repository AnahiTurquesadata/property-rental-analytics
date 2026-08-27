SELECT
  month_reservation,
  booking_channel,
  ROUND(SUM(net_price), 2) AS total_facturado
FROM
  `property-rental-analytics.rental_business.reservations_data`
GROUP BY
  month_reservation,
  booking_channel
ORDER BY
  month_reservation,
  total_facturado DESC;
