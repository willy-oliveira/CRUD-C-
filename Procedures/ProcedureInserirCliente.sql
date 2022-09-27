USE Clientes
GO

IF EXISTS(SELECT TOP 1 * FROM SYS.OBJECTS WHERE NAME = 'InsereCliente')
BEGIN
    DROP PROCEDURE InsereCliente
    PRINT 'InsereCliente -- REMOVIDA COM SUCESSO'
END
GO

CREATE PROCEDURE dbo.InsereCliente
(
@CPF varchar(11), @Nome varchar(30), @Sexo char(1), @Tipo varchar(10), @Situacao varchar(10)
)
AS
BEGIN

SET NOCOUNT ON
-----------------

INSERT INTO Cliente(CPF, Nome, Sexo, FK_idTipo, FK_idSituacao) VALUES (@CPF, @Nome, @Sexo, @Tipo, @Situacao)

-----------------
END
GO

IF EXISTS(SELECT TOP 1 * FROM SYS.OBJECTS WHERE NAME = 'InsereCliente')
BEGIN
    PRINT 'InsereCliente -- CRIADA COM SUCESSO'
END
GO