CREATE TABLE [dbo].[Usuarios]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Nombre] VARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Contrasenia] NVARCHAR(50) NOT NULL, 
    [IdPersona] INT NOT NULL, 
    [IdRol] INT NOT NULL, 
    [Estado] BIT NOT NULL, 
    CONSTRAINT [FK_Usuarios_Personas] FOREIGN KEY ([IdPersona]) REFERENCES [Personas]([IdPersona]), 
    CONSTRAINT [FK_Usuarios_Roles] FOREIGN KEY ([IdRol]) REFERENCES [Roles]([IdRol])
)
