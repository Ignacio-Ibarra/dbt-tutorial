{{config(materialized='table') }}

with acts as(

    select * from {{ref('diccionario_clae2')}}
),

joins as(

    select * from {{ref('join_tablas')}}
)

select a.letra_desc as Actividad, sum(j.WagesAmount)/sum(j.Jobs) as SalarioMedio
from acts as a inner join joins as j
on a.clae2 = j.Clae
group by a.letra_desc
order by SalarioMedio desc

