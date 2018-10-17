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
	SELECT 'Educação', GETDATE() UNION
	SELECT 'Eletrônicos', GETDATE() UNION
	SELECT 'Lazer', GETDATE() UNION
	SELECT 'Outros', GETDATE() UNION
	SELECT 'Restaurante', GETDATE() UNION
	SELECT 'Saúde', GETDATE() UNION
	SELECT 'Serviços', GETDATE() UNION
	SELECT 'Supermercado', GETDATE() UNION
	SELECT 'Transporte', GETDATE() UNION
	SELECT 'Vestuário', GETDATE() UNION
	SELECT 'Viagem', GETDATE()
GO

