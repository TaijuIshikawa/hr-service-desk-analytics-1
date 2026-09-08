--query1:Most Common Ticket Categories(Volume analysis)
--purpose:Identify high-volume request types to determine staffing needs and aotomation potential.


SELECT category,
       COUNT(category) AS total_tickets
FROM hr_tickets
GROUP BY category
ORDER BY total_tickets DESC;

--query2:Agent Operations & Upskilling Needs
--purpose:Measure average handling time per support specialist to spot training oppotunities


SELECT agent_name,
       ROUND(AVG(TIMESTAMPDIFF(HOUR,created_at,resolved_at)),1 AS average_operation_time
  FROM hr_tickets
  WHERE status = 'closed'
  GROUP BY agent_name
  ORDER BY average_operation_time DESC


--query3:Longest Duration Categories(Operational Bottlenecks)
--purpose:Uncover complex request types that take the longest to resolve

  
  SELECT category,
         ROUND(AVG(TIMESTAMPDIFF(HOUR,created_at,resloved_at)),2) AS duration_time
  FROM hr_tickets
  WHERE status = 'closed'
  GROUP BY category
  ORDER BY duration_time DESC;


  
