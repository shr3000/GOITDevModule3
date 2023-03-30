SELECT CONCAT('Project #',id) AS NAME, DATEDIFF(MONTH, start_date, finish_date) AS MONTH_COUNT FROM project GROUP BY ID having month_count = (SELECT MAX(DATEDIFF(MONTH, start_date, finish_date)) FROM project)

