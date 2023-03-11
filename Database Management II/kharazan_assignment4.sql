/*USE master
CREATE TABLE computer(Id int NOT NULL PRIMARY KEY, ComputerModel varchar(50) NULL, ComputerSpec varchar(50) NULL); */


CREATE TABLE computer (
    ComputerID int,
    Manufacturer varchar(255),
    Model varchar(255),
    ReleaseYear varchar(255),
    GraphicsSpec varchar(255),
	Price varchar (255)
);


CREATE SEQUENCE dbo.ComputerSequence
as int
start with 1
increment by 1;

insert into dbo.computer
		(ComputerID,
		Manufacturer,
		Model,
		ReleaseYear,
		GraphicsSpec,
		Price)
values
		(next value for dbo.ComputerSequence, 'Razer', '15', 2022, 'RTX 3070', 1800);


insert into dbo.computer
		(ComputerID,
		Manufacturer,
		Model,
		ReleaseYear,
		GraphicsSpec,
		Price)
values
		(next value for dbo.ComputerSequence, 'ASUS', 'F15', 2021, 'RTX 3060', 1100);


insert into dbo.computer
		(ComputerID,
		Manufacturer,
		Model,
		ReleaseYear,
		GraphicsSpec,
		Price)
values
		(next value for dbo.ComputerSequence, 'Lenovo', 'Legion', 2022, 'RTX 3050TI', 650);




insert into dbo.computer
		(ComputerID,
		Manufacturer,
		Model,
		ReleaseYear,
		GraphicsSpec,
		Price)
values
		(next value for dbo.ComputerSequence, 'Dell', 'Inspiron', 2022, 'RTX 3050TI', 800);


Select ComputerID, Manufacturer, Model, ReleaseYear, GraphicsSpec, price
from computer


DROP SEQUENCE ComputerSequence
