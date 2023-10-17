CREATE TABLE [dbo].[Departamentos]
(
	[IdDepartamento] INT NOT NULL PRIMARY KEY, 
    [Nombre] VARCHAR(50) NULL, 
    [Descripcion] NVARCHAR(150) NULL, 
    [Estado] BIT NULL, 
    [Fecha] DATETIME NULL
)
