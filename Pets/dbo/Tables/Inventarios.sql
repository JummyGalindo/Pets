CREATE TABLE [dbo].[Inventarios]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FechaIngreso] DATETIME NULL, 
    [FechaVencimiento] DATETIME NULL, 
    [Stock] INT NULL, 
    [Estado] BIT NULL, 
    [IdProducto] INT NULL, 
    CONSTRAINT [FK_Inventarios_Productos] FOREIGN KEY ([IdProducto]) REFERENCES [Productos]([IdProducto])
)
