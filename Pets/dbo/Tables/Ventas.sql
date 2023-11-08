CREATE TABLE [dbo].[Ventas]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [FechaVenta] DATETIME NOT NULL,
    [CantidadArticulos] INT NOT NULL, 
    [Total] DECIMAL NOT NULL, 
)
