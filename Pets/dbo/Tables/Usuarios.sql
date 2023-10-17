CREATE TABLE [dbo].[Usuarios]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Nombre] VARCHAR(50) NULL, 
    [Email] NVARCHAR(50) NULL, 
    [Contrasenia] NVARCHAR(50) NULL, 
    [IdPersona] INT NULL, 
    [IdRol] INT NULL, 
    [Estado] BIT NULL, 
    CONSTRAINT [FK_Usuarios_Personas] FOREIGN KEY ([IdPersona]) REFERENCES [Personas]([IdPersona]), 
    CONSTRAINT [FK_Usuarios_Roles] FOREIGN KEY ([IdRol]) REFERENCES [Roles]([IdRol])
)
