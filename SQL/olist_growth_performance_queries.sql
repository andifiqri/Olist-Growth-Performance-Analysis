WITH order_level AS (
    SELECT   c.customer_unique_id,
             o.order_id,
             MIN(o.order_purchase_timestamp) OVER(PARTITION BY c.customer_unique_id) AS first_purchase_date,
             o.order_purchase_timestamp,
             LAG(o.order_purchase_timestamp) OVER(PARTITION BY c.customer_unique_id ORDER BY o.order_purchase_timestamp) AS prev_purchase_date,
             o.order_approved_at,
             SUM(op.payment_value) AS revenue
    FROM     orders o
    JOIN     customers c
             ON o.customer_id = c.customer_id
    JOIN     order_payments op
             ON o.order_id = op.order_id
    WHERE    o.order_status IN ('approved','delivered')
    GROUP BY c.customer_unique_id,
             o.order_id,
             o.order_purchase_timestamp,
             o.order_approved_at
)
SELECT  *,
        DATEDIFF(DAY, prev_purchase_date, order_purchase_timestamp) AS interpurchase_day,
        CASE WHEN first_purchase_date = order_purchase_timestamp THEN 'New Customer' ELSE 'Existing Customer' END AS customer_type
FROM    order_level;