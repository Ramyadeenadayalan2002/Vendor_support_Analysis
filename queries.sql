- View all data
SELECT * FROM tickets;

-- Total tickets
SELECT COUNT(*) AS total_tickets FROM tickets;

-- Negative Response Rate (NRR)
SELECT 
 (COUNT(CASE WHEN response_quality = 'Negative' THEN 1 END) * 100.0 / COUNT(*)) AS NRR_percentage
FROM tickets;

-- Average resolution time
SELECT AVG(resolution_time) AS avg_resolution_time FROM tickets;

-- Issues count by type
SELECT issue_type, COUNT(*) AS count
FROM tickets
GROUP BY issue_type
ORDER BY count DESC;

-- Negative responses by issue type
SELECT issue_type, COUNT(*) AS negative_count
FROM tickets
WHERE response_quality = 'Negative'
GROUP BY issue_type
ORDER BY negative_count DESC;

-- Audit flagged cases
SELECT audit_flag, COUNT(*) AS count
FROM tickets
GROUP BY audit_flag;
