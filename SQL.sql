--Soma as calorias de uma tabela agrupando por tipo e onde a soma for maior que 150:
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
