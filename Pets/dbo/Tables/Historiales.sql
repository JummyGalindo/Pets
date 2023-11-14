CREATE TABLE [dbo].[Historiales]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FechaVisita] DATETIME NULL, 
    [Motivo] NVARCHAR(200) NULL, 
    [Diagnostico] VARCHAR(200) NULL, 
    [IdPaciente] INT NOT NULL, 
    [IdUser] INT NULL,
    CONSTRAINT [FK_Historiales_Pacientes] FOREIGN KEY ([IdPaciente]) REFERENCES [Pacientes]([IdPaciente])
)
