USE DB_GranaCurta
GO

SELECT
	m.id_movimentacao,
	--m.dt_movimentacao,
	m.id_categoria,
    m.id_cartao,
    m.id_conta,
	FORMAT(m.dt_movimentacao, 'd', 'PT-BR') dt_movimentacao_f,
	FORMAT(m.dt_referencia, 'MM/yyyy', 'PT-BR') dt_referencia_f,
	CASE WHEN m.id_cartao IS NULL
		THEN m.ds_movimentacao
		ELSE m.ds_movimentacao + ' ' + CAST(M.nu_parcela AS varchar) + '/' + CAST(M.qt_parcelas AS varchar)
	END ds_movimentacao_c,
	isnull(c.nm_categoria, '') nm_categoria,
	--isnull(co.nm_conta, '') nm_conta,
	CASE WHEN m.id_conta IS NULL
		THEN ''
		ELSE co.nm_conta + '/' + tp_co.nm_tipo_conta
	END nm_conta_c,
	CASE WHEN m.id_cartao IS NULL
		THEN ''
		--ELSE ca.nm_cartao + '/' + ca.nm_bandeira + ' (#### #### #### ' + ca.nm_4_ult_dig + ')'
		ELSE ca.nm_cartao + '/' + ca.nm_bandeira + ' (' + ca.nm_4_ult_dig + ')'
	END nm_cartao_c,
	m.id_cartao,
	m.id_conta,
	FORMAT(m.vl_movimentacao, 'N', 'PT-BR') vl_movimentacao_f
FROM granacurta.tb_movimentacoes m (NOLOCK)
INNER JOIN granacurta.tb_categorias c (NOLOCK)
	ON m.id_categoria = c.id_categoria
LEFT JOIN granacurta.tb_cartoes ca (NOLOCK)
	ON m.id_cartao = ca.id_cartao
LEFT JOIN granacurta.tb_contas co (NOLOCK)
	ON m.id_conta = co.id_conta
LEFT JOIN granacurta.tb_tipos_contas tp_co (NOLOCK)
	ON tp_co.id_tipo_conta = co.id_tipo_conta

