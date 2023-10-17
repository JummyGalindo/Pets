CREATE TABLE [dbo].[PersonaDepartamento]
(
	[IdPersonaDepartamento] INT NOT NULL PRIMARY KEY, 
    [IdPersona] INT NULL, 
    [IdDepartamento] INT NULL, 
    CONSTRAINT [FK_PersonaDepartamento_Personas] FOREIGN KEY ([IdPersona]) REFERENCES [Personas]([IdPersona]), 
    CONSTRAINT [FK_PersonaDepartamento_Departamentos] FOREIGN KEY ([IdDepartamento]) REFERENCES [Departamentos]([IdDepartamento])
)
