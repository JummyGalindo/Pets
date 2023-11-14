CREATE TABLE [dbo].[Personas]
(
	[IdPersona] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Nombre] NVARCHAR(200) NOT NULL, 
    [Apellidos] NVARCHAR(200) NOT NULL, 
    [Direccion] VARCHAR(200) NOT NULL,
    [Cuidad] NVARCHAR(50) NULL, 
    [CodigoPostal] INT NULL, 
    [Telefono] VARCHAR(20) NULL, 
    [Estado] BIT NOT NULL, 
    [IdTipoPersona] INT NOT NULL, 
    [ApellidoPaterno] NVARCHAR(100) NULL, 
    [ApellidoMaterno] NVARCHAR(100) NULL, 
    [IdUser] INT NULL,
    CONSTRAINT [FK_Personas_TipoPersona] FOREIGN KEY ([IdTipoPersona]) REFERENCES [TipoPersona]([IdTipoPersona])
)
