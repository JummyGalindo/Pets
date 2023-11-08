CREATE TABLE [dbo].[DetalleVenta]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[IdVenta] INT NOT NULL,
	[Descripcion] NVARCHAR(200) NULL,
	[Precio] DECIMAL(18,0) NOT NULL,
	[Cantidad] DECIMAL(18,0) NOT NULL,
	[Total] DECIMAL(18,0) NOT NULL, 
	[IdProducto] INT NOT NULL,
    CONSTRAINT [FK_DetalleVenta_Ventas] FOREIGN KEY ([IdVenta]) REFERENCES [Ventas]([Id]), 
    CONSTRAINT [FK_DetalleVenta_Productos] FOREIGN KEY ([IdProducto]) REFERENCES [Productos]([IdProducto])
)
