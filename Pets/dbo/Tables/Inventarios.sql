CREATE TABLE [dbo].[Inventarios]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FechaIngreso] DATETIME NOT NULL, 
    [FechaVencimiento] DATETIME NOT NULL, 
    [Stock] INT NULL, 
    [Estado] BIT NOT NULL, 
    [IdProducto] INT NOT NULL, 
    CONSTRAINT [FK_Inventarios_Productos] FOREIGN KEY ([IdProducto]) REFERENCES [Productos]([IdProducto])
)
