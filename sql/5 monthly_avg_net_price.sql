SELECT
month_reservation,
    ROUND(AVG(net_price),2) AS monthly_avg_net_price

FROM

    `property-rental-analytics.rental_business.reservations_data` 

GROUP BY month_reservation

ORDER BY monthly_avg_net_price DESC; 
