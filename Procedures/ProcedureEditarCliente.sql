USE Clientes
GO

IF EXISTS(SELECT TOP 1 * FROM SYS.OBJECTS WHERE NAME = 'EditarCliente')
BEGIN
    DROP PROCEDURE EditarCliente
    PRINT 'EditarCliente -- REMOVIDA COM SUCESSO'
END
GO

CREATE PROCEDURE dbo.EditarCliente
(
@CPF varchar(11), @Nome varchar(30), @Sexo char(1), @Tipo varchar(10), @Situacao varchar(10)
)
AS
BEGIN

SET NOCOUNT ON
-----------------

UPDATE Cliente SET Nome = @Nome, Sexo = @Sexo, FK_idTipo = @Tipo, FK_idSituacao = @Situacao WHERE CPF = @CPF

-----------------
END
GO

IF EXISTS(SELECT TOP 1 * FROM SYS.OBJECTS WHERE NAME = 'EditarCliente')
BEGIN
    PRINT 'EditarCliente -- CRIADA COM SUCESSO'
END
GO