CREATE TABLE [dbo].[Internamientos]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FechaIngreso] DATETIME NOT NULL, 
    [Medicamento] VARCHAR(150) NULL, 
    [Antecedentes] VARCHAR(150) NULL, 
    [Tratamiento] VARCHAR(150) NULL, 
    [Estado] BIT NOT NULL, 
    [IdPaciente] INT NOT NULL, 
    [IdUsuario] INT NOT NULL, 
    [IdPersonaDepartamento] INT NOT NULL, 
    CONSTRAINT [FK_Internamientos_Pacientes] FOREIGN KEY ([IdPaciente]) REFERENCES [Pacientes]([IdPaciente]), 
    CONSTRAINT [FK_Internamientos_Personas] FOREIGN KEY ([IdUsuario]) REFERENCES [Personas]([IdPersona]), 
    CONSTRAINT [FK_Internamientos_PersonaDepartamento] FOREIGN KEY ([IdPersonaDepartamento]) REFERENCES [PersonaDepartamento]([IdPersonaDepartamento])
)
