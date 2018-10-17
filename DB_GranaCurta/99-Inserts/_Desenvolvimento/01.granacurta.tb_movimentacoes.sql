USE DB_GranaCurta
GO

--TRUNCATE TABLE granacurta.tb_movimentacoes

INSERT INTO granacurta.tb_movimentacoes (
	dt_movimentacao,
	dt_referencia,
	ds_movimentacao,
	vl_movimentacao,
	id_usuario,
	id_categoria,
	dt_criacao,
	id_conta
)
	SELECT
		'2018-10-09',
		'2018-10-01',
		'Subway Assis Brasil',
		18.00,
		1,
		6,
		GETDATE(),
		1
GO

INSERT INTO granacurta.tb_movimentacoes (
	dt_movimentacao,
	dt_referencia,
	ds_movimentacao,
	nu_parcela,
	qt_parcelas,
	vl_movimentacao,
	id_usuario,
	id_categoria,
	dt_criacao,
	id_cartao
)
	SELECT
		'2018-10-02' dt_movimentacao,
		'2018-10-01' dt_referencia,
		'Digimer Iguatemi' ds_movimentacao,
		1 nu_parcela,
		3 qt_parcelas,
		60.98 vl_movimentacao,
		1 id_usuario,
		3 id_categoria,
		GETDATE() dt_criacao,
		5 id_cartao
	UNION 
	SELECT
		'2018-10-02' dt_movimentacao,
		'2018-11-01' dt_referencia,
		'Digimer Iguatemi' ds_movimentacao,
		2 nu_parcela,
		3 qt_parcelas,
		60.98 vl_movimentacao,
		1 id_usuario,
		3 id_categoria,
		GETDATE() dt_criacao,
		5 id_cartao
	UNION 
	SELECT
		'2018-10-02' dt_movimentacao,
		'2018-12-01' dt_referencia,
		'Digimer Iguatemi' ds_movimentacao,
		3 nu_parcela,
		3 qt_parcelas,
		60.98 vl_movimentacao,
		1 id_usuario,
		3 id_categoria,
		GETDATE() dt_criacao,
		5 id_cartao
GO
