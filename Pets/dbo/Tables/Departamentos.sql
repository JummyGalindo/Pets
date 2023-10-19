CREATE TABLE [dbo].[Departamentos]
(
	[IdDepartamento] INT NOT NULL PRIMARY KEY, 
    [Nombre] VARCHAR(50) NOT NULL, 
    [Descripcion] NVARCHAR(150) NOT NULL, 
    [Estado] BIT NOT NULL, 
    [Fecha] DATETIME NOT NULL
)
