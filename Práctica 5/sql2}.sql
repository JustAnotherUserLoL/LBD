Use Practica4;

select * from Arenas;

select * from Artistas;

select Arena, idArena
from Arenas;

select ArtistaBanda, Nacionalidad
from Artistas;

select idArtista
from Artistas;


select * from Artistas
where Nacionalidad = 'E.U';

select * from Artistas
where Nacionalidad = 'E.U.';

select * from Arenas
where Localización = 'Otra carretera';

select * from Arenas
where Localización = 'Ciudad Universitaria';

select * from Arenas
where idArena = '5';


select Nacionalidad from Artistas group by Nacionalidad;
select Arena from Arenas group by Arena;
select idArena Arena from Arenas group by idArena;
select Localización from Arenas group by Localización;
select ArtistaBanda from Artistas group by ArtistaBanda;


select count (Localización) from Arenas;
select count (Arena) from Arenas;
select count (ArtistaBanda) from Artistas;
select sum (idArtista) from Artistas;
select avg (idArena) from Arenas;

select Arena, sum(Renta)
from Arenas
group by Arena
having sum(Renta) > 500;

select Arena, sum(Renta)
from Arenas
group by Arena
having sum(Renta) < 700;

select Arena, avg(Renta)
from Arenas
group by Arena
having avg(Renta) > 500;

select Arena, avg(Renta)
from Arenas
group by Arena
having avg(Renta) < 700;

select Arena, sum(Renta)
from Arenas
group by Arena
having sum(Renta) = 000;

select top 3 * from Arenas;
select top 3 * from Arenas where Renta > 500;
select top 3 * from Arenas where Renta < 600;
select top 5 * from Artistas;
select top 3 * from Artistas where Nacionalidad = 'Alemania';
