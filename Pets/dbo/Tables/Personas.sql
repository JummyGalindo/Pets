CREATE TABLE [dbo].[Personas]
(
	[IdPersona] INT NOT NULL PRIMARY KEY, 
    [Nombre] NVARCHAR(200) NOT NULL, 
    [Apellidos] NVARCHAR(200) NOT NULL, 
    [Direccion] VARCHAR(200) NOT NULL,
    [Cuidad] NVARCHAR(50) NULL, 
    [CodigoPostal] INT NULL, 
    [Telefono] VARCHAR(20) NULL, 
    [Estado] BIT NOT NULL, 
    [IdTipoPersona] INT NOT NULL, 
    CONSTRAINT [FK_Personas_TipoPersona] FOREIGN KEY ([IdTipoPersona]) REFERENCES [TipoPersona]([IdTipoPersona])
)
