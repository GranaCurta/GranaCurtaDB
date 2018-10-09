USE DB_GranaCurta
GO

--DROP TABLE granacurta.tb_tipos_movimentacoes

CREATE TABLE granacurta.tb_tipos_movimentacoes (
	id_tipo_movimentacao INT IDENTITY(1,1) NOT NULL,
	nm_tipo_movimentacao VARCHAR(100) NOT NULL,
	dt_criacao SMALLDATETIME NOT NULL,
	dt_alteracao SMALLDATETIME NULL,
	CONSTRAINT pk_tipos_movimentacoes PRIMARY KEY CLUSTERED (id_tipo_movimentacao)
)
GO


