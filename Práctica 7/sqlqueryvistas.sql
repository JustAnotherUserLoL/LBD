use Practica7;

select * from Boletos;

create view Revision as
select ventas
from Boletos
inner join Artistas on Boletos.idArtista = Artistas.idArtista;

create view Revision2 as
select ventas
from Boletos
left join Artistas on Boletos.idArtista = Artistas.idArtista;

create view Revision3 as
select ventas
from Boletos
right join Artistas on Boletos.idArtista = Artistas.idArtista;

create view Revision4 as
select ventas
from Boletos
full join Artistas on Boletos.idArtista = Artistas.idArtista;

create view Revision5 as
select ArtistaBanda
from Artistas
right join Precios on Artistas.idArtista = Precios.idArtista;

select * from Clientes;

create view Revision6 as
select NombreCliente
from Clientes
where Sexo = 'H'
group by NombreCliente;

create view Revision7 as
select NombreCliente
from Clientes
where Sexo = 'M'
group by NombreCliente;

create view Revision8 as
select NombreCliente
from Clientes
where Edad > 20
group by NombreCliente;

create view Revision9 as
select NombreCliente
from Clientes
where Edad < 30
group by NombreCliente;

create view Revision10 as
select NombreCliente
from Clientes
where idCliente > 4
group by NombreCliente;

create view Revision11 as
select count (idCliente) NombreCliente
from Clientes
where Sexo = 'H'
group by NombreCliente
having count (idCliente) > 1;

create view Revision12 as
select count(Edad) NombreCliente
from Clientes
where sexo = 'H'
group by NombreCliente
having count(Edad) < 30;

create view Revision13 as
select count (idCliente) NombreCliente
from Clientes
where Sexo = 'M'
group by NombreCliente
having count (idCliente) > 1;

create view Revision14 as
select count(Edad) NombreCliente
from Clientes
where sexo = 'M'
group by NombreCliente
having count(Edad) < 30;

create view Revision15 as
select count(Edad) NombreCliente
from Clientes
where idCliente > 0
group by NombreCliente
having count(Edad) < 18;