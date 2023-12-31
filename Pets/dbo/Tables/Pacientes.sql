﻿CREATE TABLE [dbo].[Pacientes]
(
	[IdPaciente] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Nombre] VARCHAR(150) NOT NULL, 
    [Raza] VARCHAR(150) NULL, 
    [Especie] VARCHAR(50) NULL, 
    [Sexo] VARCHAR(20) NULL, 
    [Edad] VARCHAR(50) NULL, 
    [Color] VARCHAR(50) NULL, 
    [Peso] VARCHAR(50) NULL, 
    [Estado] BIT NOT NULL, 

    [Fecha] DATETIME NOT NULL, 
    [IdPersona] INT NOT NULL, 
    [Imagen] VARBINARY(MAX) NULL,
    [NombreArchivo] NVARCHAR(50) NULL,
    [TipoContenido] NVARCHAR(50) NULL,
    [IdUser] INT NULL,
    CONSTRAINT [FK_Pacientes_Personas] FOREIGN KEY ([IdPersona]) REFERENCES [Personas]([IdPersona]) 
)
