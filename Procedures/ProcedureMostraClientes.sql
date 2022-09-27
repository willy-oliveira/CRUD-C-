USE Clientes
GO

IF EXISTS(SELECT TOP 1 * FROM SYS.OBJECTS WHERE NAME = 'MostraClientes')
BEGIN
    DROP PROCEDURE MostraClientes
    PRINT 'MostraClientes -- REMOVIDA COM SUCESSO'
END
GO

CREATE PROCEDURE dbo.MostraClientes
AS
BEGIN

SET NOCOUNT ON
-----------------

SELECT CPF,Nome, Sexo, t.descricao as [Tipo de cliente], s.descricao as [Situação do cliente]
FROM Cliente c
JOIN Tipo t on c.FK_idTipo = t.id_tipo
JOIN Situacao s on c.FK_idSituacao = s.id_situacao
-----------------
END
GO

IF EXISTS(SELECT TOP 1 * FROM SYS.OBJECTS WHERE NAME = 'MostraClientes')
BEGIN
    PRINT 'MostraClientes -- CRIADA COM SUCESSO'
END
GO