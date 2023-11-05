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
