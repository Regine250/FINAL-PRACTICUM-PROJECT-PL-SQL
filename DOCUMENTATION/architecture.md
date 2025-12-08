# Architecture Overview

## Purpose  
This document gives a high-level view of how the database and application (if any) are structured, and the main design/architectural decisions behind the system.

## System Context  
- The system is a **Mining Database** for [Regine’s Mining DB project].  
- It stores all mining-related data: equipment, maintenance, repairs, audit logs, holidays, users, etc.  
- Intended to be used by operations, maintenance, and audit teams, enforcing business rules (e.g. controlled INSERTs via triggers).

## High-Level Architecture  

