use Practica4;

insert into Arenas(Arena,Localizaci�n,idArena)
values
('Gasparmas', 'Gasparlandia', '1'),
('Estadio Tigres','CiudadUniversitaria','2'),
('Estadio Monterrey','A lado de bosque Magico','3'),
('FIME','Ciuad Universitaria','4'),
('FCFM','Ciudad Universitaria','5'),
('FacDyc','Ciudad Universitaria','6'),
('Coliseo que todav�a no exite','Monterrey','7'),
('KidsZania','La carretera','8'),
('Mundo de adeveras','Otra carretera','9'),
('Fundidora','A lado del metro estaci�n Y griega','10');

update Arenas
set Localizaci�n = 'La carretera'
where idArena = 9;

update Arenas
set Localizaci�n = 'Otra carretera'
where idArena = 8;

update Arenas
set Localizaci�n = 'Cerca del metro San Berna', Arena = 'Fudidora'
where idArena = 7;

select * from Arenas;

Delete from Arenas
where Arena = 'Fime';

Delete from Arenas
where Localizaci�n = 'Gasparlandia';

insert into Artistas(ArtistaBanda,Nacionalidad,idArtista)
values
('Green Day','E.U.','1'),
('Nickelback','E.U','2'),
('Morat','Colombia','3'),
('Simple Plan','E.U.','4'),
('Asking Alexandria','E.U','5'),
('My Chemical Romance','E.U','6'),
('Bullet for my valentine','E.U','7'),
('Rammstein','Alemania','8'),
('Sum 41','E.U.','9'),
('Blink 182','E.U','10');

update Artistas
set ArtistaBanda = 'Mozart', Nacionalidad = 'La luna'
where idArtista = 7;

update Artistas
set ArtistaBanda = 'Sallieri', Nacionalidad = 'Salero'
where idArtista = 3;

select * from Artistas;

Delete from Artistas
where Nacionalidad = 'Salero';

Delete from Artistas
where ArtistaBanda = 'Asking Alexandria';

Delete from Artistas
where Nacionalidad = 'La Luna';