-- Первый запрос 
select e.id_employees,
       e.email,
       e.employee_date
  from employees e
       join positions p on e.id_position = p.id_position 
        and p.position = 'Бариста'
       join coffee_shops c on e.id_coffee_shops = c.id_coffee_shops
        and c.coffee_shops_name = 'Лермонтова'
 where e.employee_date >= '2020-01-01' 
   and e.employee_date < '2021-01-01'

;

-- Второй запрос
select c.coffee_shops_name,
       c.recruting,
       count(e.id_employees) filter (where p.position = 'Бариста') as current_barista_count
  from coffee_shops c 
       left join employees e on e.id_coffee_shops = c.id_coffee_shops
       left join positions p on e.id_position = p.id_position
 where c.recruting > 6
 group by 1, 2
 order by c.recruting desc
;