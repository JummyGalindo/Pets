CREATE TABLE [dbo].[Usuarios]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Nombre] NVARCHAR(150) NOT NULL, 
    [Email] NVARCHAR(50) NOT NULL, 
    [Contrasenia] NVARCHAR(50) NOT NULL, 
    [IdRol] INT NOT NULL, 
    [Estado] BIT NOT NULL, 
    CONSTRAINT [FK_Usuarios_Roles] FOREIGN KEY ([IdRol]) REFERENCES [Roles]([IdRol])
)
