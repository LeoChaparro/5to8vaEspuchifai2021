delimiter $$
	create procedure Album (unIdAlbum INT,unNombre varchar(50),unFecha date ,unIdBanda smallint)
    begin 
    insert into album (IdAlbum,Nombre,Fecha,IdBanda)
                value (unIdAlbum,unNombre,unFecha,unIdBanda);
                end $$
create procedure Banda (unIdBanda smallint,unNombre varchar(50), unAnio year)
begin
insert into banda (IdBanda,Nombre,Anio)
            value (unIdBanda,unNombre,unAnio);
            end $$
create procedure Cancion (unIdCancion smallint, unNombre varchar(50), unNumero decimal, unIdAlbum int)
begin 
insert into cancion (IdCancion, Nombre, Numero, IdAlbum)
			  value (unIdCancion, unNombre, unNumero, unIdAlbum);
              end $$
create procedure reproducir (unIdCancion smallint,unIdCliente smallint,unFecha datetime)
begin
insert into reproduccion (IdCancion,IdCliente,Fecha)
                   value (unIdCancion,unIdCliente,UnFecha);
                   end $$
create procedure registrarcliente (unIdCliente smallint,unContrasena varchar(50), unNombre varchar (50), unApellido varchar (50), unMail varchar(50))
begin
insert into cliente (IdCliente,Contrasena,Nombre,Apellido,Mail)
              value (unIdCliente,"SHA256",unNombre,unApellido,unMail);
              end $$
