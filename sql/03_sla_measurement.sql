--query:SLA Breach Rate Analysis
--purpose:Measure SLA failure rates across ticket categories to identify sever operational bottlenecks.


SELECT category,
       COUNT(ticket_id) AS total_closed_tickets,
       SUM(CASE WHEN TIMESTAMPDIFF(HOUR,created_at,resolved_at)>24 THEN 1 ELSE 0 END) AS sla_breaches,
       ROUND(
          (SUM(CASE WHEN TIMESTAMPDIFF(HOUR,created_at,resolved_at)>24 THEN 1 ELSE 0 END) * 100.0)
          / COUNT(ticket_id),1
          ) AS breach_rate_pct
       FROM hr_tickets
       WHERE status = 'Closed'
       GROUP BY category
       ORDER BY breach_rate_pct DESC;
       
