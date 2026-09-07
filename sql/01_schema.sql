CREATE TABLE hr_tickets(
  ticket_id INT PRIMARY KEY,
  employee_id INT,
  category VARCHAR(50),
  agent_name VARCHAR(50),
  created_at DATETIME,
  resolved_at DATETIME,
  status VARCHAR(50)
);

INSERT INTO hr_tickets VALUES
  (1, 501, 'Onboarding Setup', 'Sarah Jenkins', '2026-09-01 09:00:00', '2026-09-02 15:00:00', 'Closed'),
(2, 502, 'Payroll Discrepancy', 'Kenji Sato', '2026-09-01 10:00:00', '2026-09-01 14:00:00', 'Closed'),
(3, 503, 'Onboarding Setup', 'Sarah Jenkins', '2026-09-02 08:30:00', '2026-09-04 11:00:00', 'Closed'),
(4, 504, 'Payroll Discrepancy', 'Kenji Sato', '2026-09-02 11:00:00', '2026-09-03 09:00:00', 'Closed'),
(5, 505, 'Paid Leave Request', 'Elena Rostova', '2026-09-03 14:00:00', '2026-09-04 10:00:00', 'Closed'),
(6, 506, 'Onboarding Setup', 'Sarah Jenkins', '2026-09-04 09:00:00', NULL, 'Open'),
(7, 507, 'Onboarding Setup', 'Sarah Jenkins', '2026-09-04 10:30:00', NULL, 'Open'),
(8, 508, 'Payroll Discrepancy', 'Kenji Sato', '2026-09-04 11:00:00', '2026-09-04 13:00:00', 'Closed'),
(9, 509, 'Benefits Query', 'Elena Rostova', '2026-09-05 09:00:00', '2026-09-05 11:30:00', 'Closed'),
(10, 510, 'Onboarding Setup', 'Sarah Jenkins', '2026-09-05 10:00:00', NULL, 'Open');
