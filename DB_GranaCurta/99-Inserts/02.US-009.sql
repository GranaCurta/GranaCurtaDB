USE DB_GranaCurta
GO

BEGIN TRANSACTION
--COMMIT
--ROLLBACK

INSERT INTO granacurta.tb_categorias(
	nm_categoria,
	dt_criacao
)
	SELECT 'Casa', GETDATE() UNION
	SELECT 'Educa��o', GETDATE() UNION
	SELECT 'Eletr�nicos', GETDATE() UNION
	SELECT 'Lazer', GETDATE() UNION
	SELECT 'Outros', GETDATE() UNION
	SELECT 'Restaurante', GETDATE() UNION
	SELECT 'Sa�de', GETDATE() UNION
	SELECT 'Servi�os', GETDATE() UNION
	SELECT 'Supermercado', GETDATE() UNION
	SELECT 'Transporte', GETDATE() UNION
	SELECT 'Vestu�rio', GETDATE() UNION
	SELECT 'Viagem', GETDATE()
GO

