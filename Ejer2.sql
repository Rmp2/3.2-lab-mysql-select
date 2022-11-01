SELECT a.au_id AS "ID", a.au_lname AS "Apellido" ,a.au_fname AS "Nombre",COALESCE (SUM(s.qty),0) AS "TOTAL"
FROM authors a  LEFT JOIN titleauthor t2 ON a.au_id = t2.au_id
LEFT JOIN sales s ON s.title_id =t2.title_id
GROUP BY "ID"
ORDER BY "TOTAL" DESC;
