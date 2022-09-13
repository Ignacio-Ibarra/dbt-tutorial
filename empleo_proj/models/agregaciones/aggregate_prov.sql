{{config(materialized='table') }}

with deptos as(

    select * from {{ ref('diccionario_cod_depto')}}

),

joins as(

    select * from {{ref('join_tablas')}}
)

select d.nombre_provincia_indec as Provincia, sum(j.WagesAmount)/sum(j.Jobs) as SalarioMedio
from deptos as d inner join joins as j
on d.codigo_departamento_indec = j.CodDepto
group by d.nombre_provincia_indec
order by SalarioMedio desc


