USE DB_GranaCurta
GO

SELECT
	--m.id_movimentacao,
	--m.dt_movimentacao,
	--m.dt_referencia,
	--m.ds_movimentacao,
	--m.vl_movimentacao,
	--tm.nm_categoria,
	--ct.nm_cartao,
	--ct.nm_bandeira,
	--ct.nm_4_ult_dig,
	*
FROM granacurta.tb_movimentacoes m (NOLOCK)
INNER JOIN granacurta.tb_categorias TM (NOLOCK)
	ON m.id_categoria = TM.id_categoria
LEFT JOIN granacurta.tb_cartoes ct (NOLOCK)
	ON m.id_cartao = ct.id_cartao
LEFT JOIN granacurta.tb_contas co (NOLOCK)
	ON m.id_conta = co.id_conta
