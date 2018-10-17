USE DB_GranaCurta
GO

--DROP TABLE granacurta.tb_movimentacoes

CREATE TABLE granacurta.tb_movimentacoes (
	id_movimentacao INT IDENTITY(1,1) NOT NULL,
	dt_movimentacao SMALLDATETIME NULL,
	dt_referencia SMALLDATETIME NULL,--guardará o mês da fatura a qual a movimentação pertence
	ds_movimentacao VARCHAR(100) NULL,
	nu_parcela int NULL,
	qt_parcelas int NULL,
	vl_movimentacao NUMERIC(20, 2) NULL,
	id_usuario INT NOT NULL,
	id_categoria INT NULL,
	id_cartao INT NULL,
	id_conta INT NULL,
	dt_criacao SMALLDATETIME NOT NULL,
	dt_alteracao SMALLDATETIME NULL,
	CONSTRAINT pk_movimentacoes PRIMARY KEY CLUSTERED (id_movimentacao),
	CONSTRAINT fk_movimentacoes_usuarios FOREIGN KEY (id_usuario)
		REFERENCES granacurta.tb_usuarios(id_usuario),
	CONSTRAINT fk_movimentacoes_tipos_movimentacoes FOREIGN KEY (id_categoria)
		REFERENCES granacurta.tb_categorias(id_categoria),

	CONSTRAINT fk_movimentacoes_cartoes FOREIGN KEY (id_cartao)
		REFERENCES granacurta.tb_cartoes(id_cartao),

	CONSTRAINT fk_movimentacoes_contas FOREIGN KEY (id_conta)
		REFERENCES granacurta.tb_contas(id_conta)
)
GO


CREATE INDEX ix_tb_movimentacoes_dt_movimentacao ON granacurta.tb_movimentacoes (dt_movimentacao)
GO

CREATE INDEX ix_tb_movimentacoes_dt_referencia ON granacurta.tb_movimentacoes (dt_referencia)
GO
