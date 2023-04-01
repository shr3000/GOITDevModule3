SELECT 
    CONCAT('Project ', p.id) AS name, 
    SUM(w.salary * DATEDIFF(MONTH, p.start_date, p.finish_date)) AS price 
FROM 
    project_worker pw
    LEFT JOIN worker w ON pw.worker_id = w.id
    LEFT JOIN project p ON pw.project_id = p.id
GROUP BY 
    CONCAT('Project ', p.id)
ORDER BY 
    price DESC;