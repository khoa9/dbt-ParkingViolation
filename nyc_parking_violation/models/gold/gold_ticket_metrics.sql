SELECT
  violation_code,
  COUNT(summons_number) as ticket_count,
  SUM(fee_usd) as total_revenue_usd
FROM
  {{ref('silver_violation_tickets')}}
GROUP By 
  violation_code 
ORDER BY total_revenue_usd DESC 