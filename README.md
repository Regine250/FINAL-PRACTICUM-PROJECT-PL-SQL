# Mining Equipment Maintenance and Tracking System

# 📅 Project Details

# Student Name: Regine Pacis Igihozo.
## Student ID: 27703.
## Lecturer: Eric Maniraguha.
## Course Code & Name: INSY 8311 - Database Development with PL/SQL.
## Academic Year: 2025-2026.

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

# 5. Phase I: Problem Statement ✔️

This phase involved identifying and clearly outlining the key challenges in traditional parking systems. Issues like inefficient record-keeping, slot management, and auditing were documented to justify the need for an automated PL/SQL-based solution.

Phase II: Business Process Modeling ✔️

In this stage, workflows and interactions between system entities (users, vehicles, attendants, etc.) were mapped using process diagrams. The aim was to understand how parking operations are performed and how to model them efficiently in a database system.

# Phase III: Logical Design ✔️

This phase focused on converting the business model into a database model. Entity-relationship diagrams (ERD) were created to define tables, attributes, and relationships. Constraints and normalization were also addressed here to ensure data integrity.
<img width="428" height="259" alt="MODEL" src="https://github.com/user-attachments/assets/41c26b8d-b8c7-421d-9d88-6998f2fb25e4" />

# Phase IV: Database Creation ✔️

Using Oracle SQL tools, the logical design was translated into a physical database. All core tables, such as USERS, VEHICLES, PARKING_SLOTS, etc., were created along with primary and foreign keys.

<img width="574" height="370" alt="image" src="https://github.com/user-attachments/assets/37cf113f-2795-4aad-b87e-6e6407644cba" />

# Phase V: Table Implementation & Data Insertion ✔️

Sample data was inserted into the created tables to test the structure and relationships. Rwandan names were used to simulate realistic data, and constraints were verified for functionality.

<img width="960" height="600" alt="data" src="https://github.com/user-attachments/assets/da34253a-8685-4ba4-b2b5-f8dd9c7ea29c" />

# Phase VI: Procedures, Functions, Cursors ✔️ Procedures like add-equipment().
procedure equip () will help us to add a new equipment to the queue / table.
<img width="444" height="367" alt="procedure(equip)" src="https://github.com/user-attachments/assets/14ee73ab-9da8-45b2-b6d2-71d2ea4c31ae" />

function like active equipment helps to track active equipments.
<img width="453" height="267" alt="function(active equipment)" src="https://github.com/user-attachments/assets/355c6796-34a2-4a7f-b556-5af28a5c6bb8" />

cursor like repair will help us to know the next repair due date of an Equipment.
<img width="643" height="407" alt="cursor(repair)" src="https://github.com/user-attachments/assets/224f3a15-86c5-4d94-9a9c-2b19c6c1a8a1" />


# Phase VII: Triggers, Packages, Auditing ✔️ Triggers restricted changes during public holidays and weekdays.
Audit logs recorded sensitive changes.
TRIGGER
<img width="550" height="370" alt="trigger-insert-holiday" src="https://github.com/user-attachments/assets/76f82ae9-845c-4102-8318-18d0a1ef044b" />

AUDIT-LOG
<img width="475" height="241" alt="trigger-insert-audit-log" src="https://github.com/user-attachments/assets/2fc18738-6113-466f-a378-b308632bd504" />

package
<img width="413" height="227" alt="package(mining)" src="https://github.com/user-attachments/assets/7bb961f0-e362-40dc-b084-e84bb351c232" />


# 6. Expected Outcome

The system will enable mining administrators to:
> Maintain a reliable digital log of all equipment.
> Automatically schedule and monitor maintenance tasks.
> Prevent redundant equipment assignment.
> Reduce downtime and improve operational safety.

# 7. Tools Used
>Oracle 23ai free
>SQL Developer
>Lucidchart for ERD
>GitHub for documentation

# Phase VIII: Final Presentation & GitHub Report ✔️
The last phase involved presenting the completed system, showcasing features, and demonstrating the technical implementation. All documentation, ERDs, and source code were uploaded to GitHub for final review and grading.
# 8. 📄 License
Submitted as Capstone Project for Database Development with PL/SQL (2024-2025) at AUCA.

Regine P Igihozo.
