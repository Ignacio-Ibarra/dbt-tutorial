{{config(materialized='view') }}

with puestos as (

    select
        fecha,
        codigo_departamento_indec,
        clae2,
        puestos

    from prueba_1.puestos

),

with salarios as (

    select
        fecha,
        codigo_departamento_indec,
        clae2,
        w_mean

    from prueba_1.salarios

), 

/*with final as (

    select
        p.fecha as Fecha,
        p.codigo_departamento_indec as CodDepto,
        p.clae2 as Clae,
        p.puestos as Puestos,
        s.w_mean as Salarios
    from puestos as p inner join salarios as s
    on p.fecha = s.fecha 
    and p.codigo_departamento_indec = s.codigo_departamento_indec
    and p.clae2 = s.clae2

),*/

select * from puestos