USE DB_GranaCurta
GO

BEGIN TRANSACTION
--COMMIT
--ROLLBACK

INSERT INTO granacurta.tb_usuarios (
	nm_usuario,
	nm_email,
	pass,
	dt_criacao
)
	SELECT
		'Cristiano Serafim Lauffer',
		'cristiano.serafim.lauffer@gmail.com',
		'123456',
		GETDATE()
GO

INSERT INTO granacurta.tb_tipos_contas (
	nm_tipo_conta,
	dt_criacao
)
	SELECT 'Corrente', GETDATE() UNION
	SELECT 'Poupança', GETDATE() 
GO


INSERT INTO granacurta.tb_contas(
	nm_conta,
	vl_limite_ce,
	id_usuario,
	id_tipo_conta,
	dt_criacao
)
	SELECT
		'Bradesco',
		1000.00,
		1,
		1,
		GETDATE() 
	UNION ALL
	SELECT
		'Itaú',
		2000.00,
		1,
		1,
		GETDATE() 
	UNION ALL
	SELECT
		'Banrisul',
		0.00,
		1,
		2,
		GETDATE() 
GO

INSERT INTO granacurta.tb_cartoes (
	nm_cartao,
	vl_limite,
	nm_bandeira,
	nm_4_ult_dig,
	--dt_vencimento,
	--dt_melhor_data,
	vl_vencimento_dia,
	vl_melhor_dia,
	id_usuario,
	dt_criacao
)
	SELECT
		'Bradesco',
		1200,
		'Visa',
		'1243',
		--CAST(GETDATE() AS smalldatetime),
		--CAST(GETDATE() -1 AS smalldatetime),
		--CAST(GETDATE() AS DATE),
		--CAST(GETDATE() -1 AS DATE),
		10,
		8,
		1,
		CAST(GETDATE() AS smalldatetime)
GO

