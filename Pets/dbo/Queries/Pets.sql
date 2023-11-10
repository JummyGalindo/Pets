
Use master
Create Database Pets
go

Use Pets
go

CREATE TABLE [Productos]
(
	[IdProducto] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Nombre] VARCHAR(200) NOT NULL, 
    [FechaIngreso] DATETIME NOT NULL, 
    [Proveedor] VARCHAR(100) NOT NULL, 
    [Cantidad] INT NOT NULL, 
    [Stock] INT NULL, 
    [PrecioUnitario] DECIMAL NOT NULL, 
    [PrecioSugerido] DECIMAL NOT NULL, 
    [Descripcion] VARCHAR(200) NULL, 
    [FechaVencimiento] DATETIME NULL, 
    [Estado] BIT NOT NULL,
    [Imagen] VARBINARY(MAX) NULL,
    [NombreArchivo] NVARCHAR(50) NULL,
    [TipoContenido] NVARCHAR(50) NULL,
)
go

CREATE TABLE [dbo].[TipoPersona]
(
	[IdTipoPersona] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Nombre] VARCHAR(50) NULL, 
    [Descripcion] VARCHAR(100) NULL
)
go

CREATE TABLE [dbo].[Personas]
(
	[IdPersona] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Nombre] VARCHAR(200) NOT NULL, 
    [Apellidos] NVARCHAR(200) NOT NULL, 
    [Direccion] NVARCHAR(200) NOT NULL,
    [Cuidad] NVARCHAR(50) NULL, 
    [CodigoPostal] INT NULL, 
    [Telefono] VARCHAR(20) NULL, 
    [Estado] BIT NOT NULL, 
    [IdTipoPersona] INT NOT NULL, 
    [ApellidoPaterno] NVARCHAR(100) NULL, 
    [ApellidoMaterno] NVARCHAR(100) NULL,
    CONSTRAINT [FK_Personas_TipoPersona] FOREIGN KEY ([IdTipoPersona]) REFERENCES [TipoPersona]([IdTipoPersona])
)
go

CREATE TABLE [dbo].[EstadoCitas]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Nombre] VARCHAR(100) NOT NULL
)
GO



CREATE TABLE [Roles]
(
	[IdRol] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Nombre] VARCHAR(50) NOT NULL
)
go


CREATE TABLE [Departamentos]
(
	[IdDepartamento] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Nombre] VARCHAR(50) NOT NULL, 
    [Descripcion] NVARCHAR(150) NOT NULL, 
    [Estado] BIT NOT NULL, 
    [Fecha] DATETIME NOT NULL
)
go

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

go

CREATE TABLE [PersonaDepartamento]
(
	[IdPersonaDepartamento] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [IdPersona] INT NOT NULL, 
    [IdDepartamento] INT NOT NULL, 
    CONSTRAINT [FK_PersonaDepartamento_Personas] FOREIGN KEY ([IdPersona]) REFERENCES [Personas]([IdPersona]), 
    CONSTRAINT [FK_PersonaDepartamento_Departamentos] FOREIGN KEY ([IdDepartamento]) REFERENCES [Departamentos]([IdDepartamento])
)
go


CREATE TABLE [dbo].[Pacientes]
(
	[IdPaciente] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Nombre] NVARCHAR(150) NOT NULL, 
    [Raza] VARCHAR(150) NULL, 
    [Especie] VARCHAR(50) NULL, 
    [Sexo] VARCHAR(20) NULL, 
    [Edad] VARCHAR(50) NULL, 
    [Color] VARCHAR(50) NULL, 
    [Peso] VARCHAR(50) NULL, 
    [Estado] BIT NOT NULL, 
    [Fecha] DATETIME NOT NULL, 
    [IdPersona] INT NOT NULL, 
    [Imagen] VARBINARY(MAX) NULL,
    [NombreArchivo] NVARCHAR(50) NULL,
    [TipoContenido] NVARCHAR(50) NULL,
    CONSTRAINT [FK_Pacientes_Personas] FOREIGN KEY ([IdPersona]) REFERENCES [Personas]([IdPersona]) 
)
go

CREATE TABLE [Inventarios]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [FechaIngreso] DATETIME NOT NULL, 
    [FechaVencimiento] DATETIME NOT NULL, 
    [Stock] INT NULL, 
    [Estado] BIT NOT NULL, 
    [IdProducto] INT NOT NULL, 
    CONSTRAINT [FK_Inventarios_Productos] FOREIGN KEY ([IdProducto]) REFERENCES [Productos]([IdProducto])
)
go

CREATE TABLE [dbo].[Internamientos]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [FechaIngreso] DATETIME NOT NULL, 
    [Medicamento] VARCHAR(150) NULL, 
    [Antecedentes] VARCHAR(150) NULL, 
    [Tratamiento] VARCHAR(150) NULL, 
    [Estado] BIT NOT NULL, 
    [IdPaciente] INT NOT NULL, 
    [IdPersona] INT NOT NULL, 
    [IdDoctor] INT NOT NULL 
)
go

CREATE TABLE [Historiales]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [FechaVisita] DATETIME NULL, 
    [Motivo] NVARCHAR(200) NULL, 
    [Diagnostico] VARCHAR(200) NULL, 
    [IdPaciente] INT NOT NULL, 
    CONSTRAINT [FK_Historiales_Pacientes] FOREIGN KEY ([IdPaciente]) REFERENCES [Pacientes]([IdPaciente])
)
go

CREATE TABLE [dbo].[Citas]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [FechaCita] DATETIME NOT NULL, 
    [Motivo] NVARCHAR(200) NOT NULL, 
    [IdPersona] INT NOT NULL, 
    [IdEstado] INT NOT NULL, 
    CONSTRAINT [FK_Citas_Personas] FOREIGN KEY ([IdPersona]) REFERENCES [Personas]([IdPersona]), 
    CONSTRAINT [FK_Citas_EstadoCitas] FOREIGN KEY ([IdEstado]) REFERENCES [EstadoCitas]([Id]) 
)
go

CREATE TABLE [dbo].[Ventas]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [FechaVenta] DATETIME NOT NULL,
    [CantidadArticulos] INT NOT NULL, 
    [Total] DECIMAL NOT NULL, 
)
go

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
go

INSERT INTO EstadoCitas values('Activa'), ('Cancelada'), ('Reagendada')
go

INSERT INTO TipoPersona VALUES('Administrador',null)
INSERT INTO TipoPersona VALUES('Cliente',null)
INSERT INTO TipoPersona VALUES('Doctor',null)

go


INSERT INTO Roles VALUES('Administrador'), ('Usuario')
GO
