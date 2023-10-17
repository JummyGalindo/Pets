CREATE TABLE [dbo].[Productos]
(
	[IdProducto] INT NOT NULL PRIMARY KEY, 
    [Nombre] NCHAR(10) NULL, 
    [FechaIngreso] DATETIME NULL, 
    [Proveedor] VARCHAR(100) NULL, 
    [Cantidad] INT NULL, 
    [Stock] INT NULL, 
    [PrecioUnitario] DECIMAL NULL, 
    [PrecioSugerido] DECIMAL NULL, 
    [Descripcion] VARCHAR(200) NOT NULL, 
    [FechaVencimiento] DATETIME NULL, 
    [Estado] BIT NULL
)
