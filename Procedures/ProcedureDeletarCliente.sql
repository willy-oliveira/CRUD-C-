USE Clientes
GO

IF EXISTS(SELECT TOP 1 * FROM SYS.OBJECTS WHERE NAME = 'DeletarCliente')
BEGIN
    DROP PROCEDURE DeletarCliente
    PRINT 'DeletarCliente -- REMOVIDA COM SUCESSO'
END
GO

CREATE PROCEDURE dbo.DeletarCliente
(
@CPF varchar(11)
)
AS
BEGIN

SET NOCOUNT ON
-----------------

DELETE FROM Cliente Where CPF = @CPF;

-----------------
END
GO

IF EXISTS(SELECT TOP 1 * FROM SYS.OBJECTS WHERE NAME = 'DeletarCliente')
BEGIN
    PRINT 'DeletarCliente -- CRIADA COM SUCESSO'
END
GO