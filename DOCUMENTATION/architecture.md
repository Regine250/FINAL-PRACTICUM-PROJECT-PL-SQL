# Architecture Overview

## Purpose  
This document gives a high-level view of how the database and application (if any) are structured, and the main design/architectural decisions behind the system.

## System Context  
- The system is a **Mining Database** for [Regine’s Mining DB project].  
- It stores all mining-related data: equipment, maintenance, repairs, audit logs, holidays, users, etc.  
- Intended to be used by operations, maintenance, and audit teams, enforcing business rules (e.g. controlled INSERTs via triggers).

## High-Level Architecture  



- The core is a relational database implementing the data model and business rules.  
- Business logic and data integrity are enforced inside the database (triggers, constraints), not in external application code.  
- Audit logging is handled at the database level for security and traceability.  
- Holiday / calendar logic is stored in a dedicated table, ensuring holidays are centrally managed.  

## Key Components / Modules  

| Component | Role |
|----------|------|
| Schema / Tables | Core data storage (equipment, maintenance, users, holidays, audit logs, …) |
| Business-logic (Triggers / Constraints) | Enforce business rules (e.g. allowed INSERT days, audit logging) |
| Audit subsystem | Capture all attempts to insert or modify data — success or denial |
| Reference / lookup tables | E.g. holiday table for date-based logic, status flags, types codes |
| Access control & user tracking | Track which user (DB user / application user) performed an action |

## Data Flow & Operations  

1. User issues INSERT / UPDATE / DELETE command.  
2. Trigger (or constraint) checks business rule (e.g. weekday/holiday/weekend).  
3. Regardless of allow or denial: audit record is inserted.  
4. If allowed — data is committed; if denied — error is raised and operation rolled back (but audit remains).  

## Non-functional Considerations  
- **Audit integrity**: audit table must always reflect all attempts.  
- **Maintainability**: design should remain simple and relational, easy for DBAs to understand.  
- **Flexibility**: holidays (and possibly other rules) should be configurable via tables, not hard-coded.  

