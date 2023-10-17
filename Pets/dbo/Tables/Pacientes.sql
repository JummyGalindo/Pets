CREATE TABLE [dbo].[Pacientes]
(
	[IdPaciente] INT NOT NULL PRIMARY KEY, 
    [Nombre] VARCHAR(150) NULL, 
    [Raza] VARCHAR(150) NULL, 
    [Especie] VARCHAR(50) NULL, 
    [Sexo] NCHAR(10) NULL, 
    [Edad] VARCHAR(50) NULL, 
    [Color] VARCHAR(50) NULL, 
    [Peso] VARCHAR(50) NULL, 
    [Estado] BIT NULL, 
    [Fecha] DATETIME NULL
)
