SELECT client.name, COUNT(project.id) AS clnt FROM client LEFT JOIN project ON project.client_id = client.id GROUP BY client.name 
HAVING clnt = SELECT MAX(clnt) AS counter_prg FROM (SELECT client.name, COUNT(project.id) AS clnt  
FROM client LEFT JOIN project ON project.client_id = client.id GROUP BY client.name)
