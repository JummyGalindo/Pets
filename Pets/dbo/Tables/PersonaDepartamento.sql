CREATE TABLE [dbo].[PersonaDepartamento]
(
	[IdPersonaDepartamento] INT NOT NULL PRIMARY KEY, 
    [IdPersona] INT NOT NULL, 
    [IdDepartamento] INT NOT NULL, 
    CONSTRAINT [FK_PersonaDepartamento_Personas] FOREIGN KEY ([IdPersona]) REFERENCES [Personas]([IdPersona]), 
    CONSTRAINT [FK_PersonaDepartamento_Departamentos] FOREIGN KEY ([IdDepartamento]) REFERENCES [Departamentos]([IdDepartamento])
)
