use Practica6;

select * from Arenas order by idArena;
select * from Artistas order by idArtista;

select Arenas.idArena, Arenas.Arena, Artistas.idArtista, Artistas.ArtistaBanda
from Arenas
inner join Artistas on Arenas.idArena = Artistas.idArtista
order by idArena;

select Precios.idPrecio, Precios.idArtista, Artistas.idArtista
from Precios
inner join Artistas on Precios.idArtista = Artistas.idArtista;

select Precios.idPrecio, Precios.idArtista, Artistas.idArtista
from Precios
left join Artistas on Precios.idArtista = Artistas.idArtista;

select Precios.idPrecio, Precios.idArtista, Artistas.idArtista
from Precios
right join Artistas on Precios.idArtista = Artistas.idArtista;

select Precios.idPrecio, Precios.idArtista, Artistas.idArtista
from Precios
full join Artistas on Precios.idArtista = Artistas.idArtista;

select Boletos.idArtista, Artistas.idArtista, Artistas.ArtistaBanda
from Artistas
inner join Boletos on Artistas.idArtista = Boletos.idArtista;

select Boletos.idArtista, Artistas.idArtista, Artistas.ArtistaBanda
from Artistas
left join Boletos on Artistas.idArtista = Boletos.idArtista;

select Boletos.idArtista, Artistas.idArtista, Artistas.ArtistaBanda
from Artistas
right join Boletos on Artistas.idArtista = Boletos.idArtista;

select Boletos.idArtista, Artistas.idArtista, Artistas.ArtistaBanda
from Artistas
full join Boletos on Artistas.idArtista = Boletos.idArtista;

select Boletos.idCliente, Clientes.idCliente, Clientes.NombreCliente
from Clientes
inner join Boletos on Clientes.idCliente = Boletos.idCliente;

select * from Boletos, Artistas
where (Boletos.idArtista = Artistas.idArtista)
order by idArena;

select ArtistaBanda
from Artistas
where idArtista = any (select idArtista from Boletos where idArtista > 3);

select * from Clientes;
select * from Arenas;
select * from Boletos;
select * from Artistas;

with boletin as (select * from Boletos)
select * from boletin where ventas > 4;

select Boletos.ventas, Artistas.ArtistaBanda, Boletos.idArtista
into VentasPerArt
from Boletos
right join Artistas on Boletos.idArtista = Artistas.idArtista
where ventas > '7';

select * from VentasPerArt;