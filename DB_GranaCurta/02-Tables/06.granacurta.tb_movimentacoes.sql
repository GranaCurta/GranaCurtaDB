USE DB_GranaCurta
GO

--DROP TABLE granacurta.tb_movimentacoes

CREATE TABLE granacurta.tb_movimentacoes (
	id_movimentacao INT IDENTITY(1,1) NOT NULL,
	dt_movimentacao SMALLDATETIME NULL,
	dt_referencia SMALLDATETIME NULL,--guardará o mês da fatura a qual a movimentação pertence
	nu_parcela int NULL,
	qt_parcelas int NULL,
	vl_movimentacao NUMERIC(20, 2) NULL,
	id_usuario INT NOT NULL,
	id_tipo_movimentacao INT NOT NULL,
	dt_criacao SMALLDATETIME NOT NULL,
	dt_alteracao SMALLDATETIME NULL,
	CONSTRAINT pk_movimentacoes PRIMARY KEY CLUSTERED (id_movimentacao),
	CONSTRAINT fk_movimentacoes_usuarios FOREIGN KEY (id_usuario)
		REFERENCES granacurta.tb_usuarios(id_usuario),
	CONSTRAINT fk_movimentacoes_tipos_movimentacoes FOREIGN KEY (id_tipo_movimentacao)
		REFERENCES granacurta.tb_tipos_movimentacoes(id_tipo_movimentacao)
)
GO


CREATE INDEX ix_tb_movimentacoes_dt_movimentacao ON granacurta.tb_movimentacoes (dt_movimentacao)
GO

CREATE INDEX ix_tb_movimentacoes_dt_referencia ON granacurta.tb_movimentacoes (dt_referencia)
GO
