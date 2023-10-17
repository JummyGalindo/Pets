CREATE TABLE [dbo].[Historiales]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FechaVisita] DATETIME NULL, 
    [Motivo] VARCHAR(200) NULL, 
    [Diagnostico] VARCHAR(200) NULL, 
    [IdPaciente] INT NULL, 
    CONSTRAINT [FK_Historiales_Pacientes] FOREIGN KEY ([IdPaciente]) REFERENCES [Pacientes]([IdPaciente])
)
