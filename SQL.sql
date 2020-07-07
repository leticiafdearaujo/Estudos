--Soma as calorias de uma tabela agrupando por tipo e onde a soma for maior que 150. O Having funciona para garantir que seja aplicado o filtro após a somatória, 
--pois se utilizasse o WHERE ele olharia por linha
SELECT type, 
SUM(calories) AS total_calories 
FROM exercise_logs
GROUP BY type
HAVING total_calories > 150;

--Seleciona os tipos que aparecem mais de uma vez (Duplicados):
SELECT type FROM exercise_logs GROUP BY type HAVING COUNT(*) >= 2;

--Arredondar valores
select name, 
number_grade, 
round(fraction_completed * 100) as percent_completed 
from student_grades

--Uso de Case:
select count(*) as qnt,
case 
    when number_grade > 90 then "A"
    when number_grade > 80 then "B"
    when number_grade > 70 then "C"
Else "C"
end as "letter_grade"

from student_grades

group by letter_grade;

-- Case com mais de um critério
select count(country) as qnt,
case 
    when country in ("Israel", "South Africa") then "Africa"
    when country in ("United states", "Canada") then "América"
    when country in ("India", "United Arab Emirates") then "Asia"
else "Outros"
end as "Continente"
from sales
group by Continente

---Uso do or

select count(ID) as qnt_vendida
from sales
where country = "Norway" or country = "France";

-- INNER JOIN -- Tudo que tem em comum nas duas tabelas
select 
persons.name, 
hobbies.name 
from persons 
join hobbies on persons.id = hobbies.person_id;

select 
persons.name, 
hobbies.name 
from persons 
join hobbies on persons.id = hobbies.person_id 
where persons.name = "Bobby McBobbyFace";

-- LEFT OUTER JOIN -- Tudo que tem na Tabela da Direita (From) acrescentando os dados da Tabela da Esquerda
SELECT students.first_name, students.last_name, student_projects.title
    FROM students
    LEFT OUTER JOIN student_projects
    ON students.id = student_projects.student_id;
    
-- LEFT OUTER JOIN -- Tudo que tem na Tabela da Direita (From) acrescentando os dados da Tabela da Esquerda (Subqueries)
select
name,
mail,
sum (price) as total
from
(select 
customers.name as name, customers.email as mail, orders.price as price
from customers 
LEFT OUTER JOIN orders on customers.id = orders.customer_id)
group by name, mail
order by total desc;

