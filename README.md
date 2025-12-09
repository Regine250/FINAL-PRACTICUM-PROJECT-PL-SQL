# Mining Equipment Maintenance and Tracking System

# 📅 Project Details
#Student Name: Regine Pacis Igihozo.
##Student ID: 27703.
##Lecturer: Eric Maniraguha.
##Course Code & Name: INSY 8311 - Database Development with PL/SQL.
##Academic Year: 2025-2026.

# 1. Project Overview
   
The Mining Equipment Maintenance and Tracking System is designed to help mining companies efficiently manage their equipment lifecycle—from registration, daily usage tracking, to maintenance scheduling.
Mining equipment such as excavators, drills, loaders, and conveyors are essential assets that require regular inspection and servicing to ensure safe and continuous operations.
This system will enable database-driven management of equipment data, operator assignment, maintenance schedules, and repair history using PL/SQL stored procedures, triggers, and functions. It ensures that no equipment is overlooked and provides automatic reminders for due maintenance.
By integrating PL/SQL logic, the system helps to reduce equipment downtime, prevent costly breakdowns, and improve operational safety.

# 2. Objectives

>To develop a centralized database system for recording mining equipment details.

>To track each equipment’s status (Active, Under Maintenance, Retired).

>To automate maintenance scheduling using PL/SQL procedures.

>To prevent double assignment of equipment using constraints and triggers.

>To generate maintenance history reports efficiently.

# 3. Database Schema

1. EQUIPMENT

Column Name	Data Type	Description
equipment_id	NUMBER (PK)	Unique equipment identifier
name	VARCHAR2(50)	Equipment name
type	VARCHAR2(30)	Type/category of equipment
purchase_date	DATE	Date of acquisition
status	VARCHAR2(20)	Current status (Active, Maintenance, Retired)

2. MAINTENANCE

Column Name	Data Type	Description
maintenance_id	NUMBER (PK)	Unique maintenance record
equipment_id	NUMBER (FK)	References EQUIPMENT table
maintenance_date	DATE	Date maintenance was performed
next_due_date	DATE	Next scheduled maintenance
description	VARCHAR2(100)	Maintenance activity summary

3. OPERATOR

Column Name	Data Type	Description
operator_id	NUMBER (PK)	Unique operator ID
name	VARCHAR2(50)	Operator full name
assigned_equipment	NUMBER (FK)	Equipment currently assigned

4. REPAIR_HISTORY

Column Name	Data Type	Description
repair_id	NUMBER (PK)	Repair record ID
equipment_id	NUMBER (FK)	References EQUIPMENT
repair_date	DATE	Date of repair
issue_reported	VARCHAR2(100)	Problem description
action_taken	VARCHAR2(100)	Repair details

<img width="428" height="259" alt="image" src="https://github.com/user-attachments/assets/c99ee1fa-400d-41d4-bbc6-9d7f7622af7d" />


# 4.Innovation or Improvement

Unlike standard inventory systems, this project introduces automated PL/SQL maintenance management through:

Triggers: Automatically update equipment status to “Under Maintenance” when a maintenance record is inserted.

Procedures: Automatically calculate and insert the next maintenance date based on equipment type or usage frequency.

Functions: Return real-time equipment availability for assignment.

Error Handling: Ensure maintenance cannot be recorded for retired equipment.

This innovative integration ensures accuracy, safety compliance, and real-time updates in mining operations.

# 5. Expected Outcome

The system will enable mining administrators to:
> Maintain a reliable digital log of all equipment.
> Automatically schedule and monitor maintenance tasks.
> Prevent redundant equipment assignment.
> Reduce downtime and improve operational safety.
