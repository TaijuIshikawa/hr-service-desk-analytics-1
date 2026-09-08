# hr-service-desk-analytics-1
# HR Service Desk Operations & Capacity Analytics

## Executive Overview
This repository contains an end-to-end data analytics framework designed to model, monitor, and optimize HR Service Desk operations within a Shared Services Center (SSC) environment. Using MySQL and Power BI, this project evaluates ticket lifecycle management, agent resolution efficiency, Service Level Agreement (SLA) compliance, and operational backlog risks.

## Repository Structure
* `sql/01_schema.sql`: Database architecture, table DDL, and sample transactional dataset.
* `sql/02_bottleneck_analysis.sql`: Queries isolating high-volume categories and agent handling times.
* `sql/03_sla_measurement.sql`: Business logic calculating SLA breach rates and compliance metrics.
* `sql/04_backlog_analysis.sql`: Backlog evaluation and ticket aging queries for capacity modeling.

## Key Executive Insights

### 1. Workflow Efficiency & Bottlenecks
* **Volume:** **Onboarding Setup** represents **50% of total inbound volume** (5 of 10 tickets).
* **Handling Time:** Onboarding requests require an average of **40.25 hours** to resolve—nearly 4x longer than high-velocity requests like Payroll Discrepancies (11.33 hours).
* **Agent Impact:** Sarah Jenkins handles all Onboarding tickets, resulting in an average operational handling time of 40.25 hours compared to peers (~11 hours).

### 2. Quality & SLA Performance
* **Overall Compliance:** Achieved a **71.4% SLA Attainment Rate** across closed tickets under a standard 24-hour target.
* **Breach Drivers:** The **28.6% SLA breach rate** was driven entirely by Onboarding Setup requests, highlighting a severe operational bottleneck in new-hire provisioning.

### 3. Capacity & Backlog Risks
* **Active Backlog:** **30% of total incoming requests** (3 tickets) sit in an active, unresolved backlog.
* **Risk Concentration:** 100% of open tickets belong to Onboarding Setup under a single agent, confirming a structural capacity deficit rather than isolated underperformance.

## Strategic Recommendations
* **Short-Term:** Execute targeted upskilling programs for generalist agents to assist during peak onboarding intake.
* **Long-Term:** Submit a formal business case to expand FTE headcount with dedicated Onboarding Specialists to stabilize SLAs and eliminate backlog growth.

## Tech Stack
* **Database Engine:** MySQL
* **Visualization:** Power BI
* **Key Metrics:** SLA Attainment Rate, Handling Time (AHT), Unresolved Backlog Volume, Ticket Aging

