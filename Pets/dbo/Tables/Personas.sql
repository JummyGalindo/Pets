CREATE TABLE [dbo].[Personas]
(
	[IdPersona] INT NOT NULL PRIMARY KEY, 
    [Nombre] VARCHAR(200) NOT NULL, 
    [Apellidos] VARCHAR(200) NOT NULL, 
    [Cuidad] VARCHAR(50) NULL, 
    [CodigoPostal] INT NULL, 
    [Telefono] VARCHAR(20) NULL, 
    [Estado] BIT NOT NULL
)
