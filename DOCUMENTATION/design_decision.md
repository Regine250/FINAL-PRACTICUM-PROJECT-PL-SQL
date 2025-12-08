# Design Decisions & Architectural Rationale

This document records **why** certain design choices were made — not just *what* — so future maintainers understand the trade-offs and reasoning.

## Decision: Use database-level triggers for business rules & audit logging  
**Context / Problem Statement:**  
- Need to enforce business rules (e.g. only allow INSERT on weekends) regardless of which client/app attempts data insertion.  
- Must reliably capture audit logs of *all* attempts (allowed or denied), even if insertion fails.  

**Considered Options:**  
- Implement business rules at application layer (in code).  
- Use database triggers and audit tables.  
- Use a separate logging service.  

**Chosen Solution:** Database triggers + audit table + `PRAGMA AUTONOMOUS_TRANSACTION`.  
**Reasons / Advantages:**  
- Ensures rule enforcement even if multiple applications or direct DB access used.  
- Guarantees audit log persistence even when main transaction fails.  
- Centralizes logic in database, simplifying external apps.  

**Trade-offs / Drawbacks:**  
- Logic buried inside DB — requires DB-savvy maintainers.  
- Harder to version/control than application code.  
- May affect performance slightly due to extra audit inserts.  

---

## Decision: Store holidays in a dedicated table  

**Context:** Holidays are a variable business requirement and may change over time.  

**Options:**  
- Hard-code holiday dates inside trigger.  
- Use a table to store holidays.  

**Choice:** Use a table (`holidays`).  
**Reasons:**  
- Easy to add / remove / update holidays without changing code.  
- Centralized single source of holiday truth.  
- Makes trigger logic simpler and data-driven.  

---

## Decision: Passive Data Dictionary (documentation) instead of auto-metadata  

**Context:** You want readable documentation for tables/columns/meaning.

**Options:**  
- Rely on DBMS internal metadata views.
- Maintain a separate documentation (markdown) file.  

**Choice:** Maintain `data-dictionary.md`.  
**Reasons:**  
- Easier for developers and non-DBA personnel to understand.  
- Documentation can include business meaning, not just technical schema.  

---

## (Future Design Decisions)  

*(Reserve space for future decisions — indexing strategy, partitioning, user roles, backup policies, etc.)*
