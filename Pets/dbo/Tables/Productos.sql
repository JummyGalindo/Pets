CREATE TABLE [dbo].[Productos]
(
	[IdProducto] INT NOT NULL PRIMARY KEY, 
    [Nombre] NCHAR(10) NULL, 
    [FechaIngreso] DATETIME NOT NULL, 
    [Proveedor] VARCHAR(100) NOT NULL, 
    [Cantidad] INT NOT NULL, 
    [Stock] INT NULL, 
    [PrecioUnitario] DECIMAL NOT NULL, 
    [PrecioSugerido] DECIMAL NOT NULL, 
    [Descripcion] VARCHAR(200) NULL, 
    [FechaVencimiento] DATETIME NULL, 
    [Estado] BIT NOT NULL
)
