CREATE TABLE [dbo].[Ventas]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FechaVenta] DATETIME NOT NULL, 
    [Cantidad] DECIMAL NOT NULL, 
    [Precio] DECIMAL NOT NULL, 
    [Total] DECIMAL NOT NULL, 
    [IdProducto] INT NOT NULL, 
    CONSTRAINT [FK_Ventas_Productos] FOREIGN KEY ([IdProducto]) REFERENCES [Productos]([IdProducto])
)
