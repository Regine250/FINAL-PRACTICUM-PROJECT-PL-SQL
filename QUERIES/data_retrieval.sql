SELECT * FROM Equipment;
SELECT * FROM Maintenance;
SELECT * FROM Operator;
SELECT * FROM Repair_history;
SELECT * FROM EQUIPMENT_audit;
SELECT * FROM MAINTENANCE_AUD;

SELECT audit_id,
       table_name,
       attempted_on,
       attempted_by,
       allowed,
       reason
FROM insert_audit
ORDER BY audit_id DESC;
