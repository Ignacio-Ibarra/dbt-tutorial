{{config(materialized='table') }}

with provs as(

select * from {{ ref('diccionario_cod_depto')}}

)

