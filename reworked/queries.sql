-- Первый запрос
select
  e.id,
  e.email,
  e.birthdate,
  e.employee_date
from test.employees e
join test.employees_positions_coffee_shops epc on epc.employee_id = e.id
  and epc.date_start < now()::timestamp
  and (epc.date_end is null or epc.date_end >= now()::timestamp)
join test.positions p on p.id = epc.position_id
  and p.position_name = 'Бариста'
join test.coffee_shops cs on cs.id = epc.coffee_shop_id
  and cs.coffee_shop_name = 'Лермонтова'
where e.employee_date >= '2020-01-01'
  and e.employee_date < '2021-01-01'
  and (e.fire_date is null or e.fire_date >= now()::timestamp)
;

-- Второй запрос
select
  cs.id,
  cs.coffee_shop_name ,
  r.recruting_quota,
  count(ecp.employee_id)
from test.coffee_shops cs
join test.recruting r on r.coffee_shop_id = cs.id
  and r.recruting_quota > 6
left join test.employees_positions_coffee_shops ecp on ecp.coffee_shop_id = cs.id
  and ecp.date_start < now()::timestamp
  and (ecp.date_end is null or ecp.date_end >= now()::timestamp)
  and ecp.position_id = (select p.id
                         from test.positions p
                         where p.position_name = 'Бариста')
group by 1, 2, 3
order by 3 desc
;