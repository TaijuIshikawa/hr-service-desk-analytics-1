--query:Unsolved Ticket Backlog & Capacity Risk
--purpose:Quantify active ticket volume and average days open by category to identify capacity gaps and guide staffing or upskilling initiatives


SELECT category,
       COUNT(ticket_id) AS total_open_ticket,
       ROUND(AVG(CURRENT_DATE - created_at::date),1) AS avg_days_open
FROM hr_tickets
WHERE LOWER(status) NOT IN ('closed','resolved')
GROUP BY category
ORDER BY total_open_ticket DESC;
