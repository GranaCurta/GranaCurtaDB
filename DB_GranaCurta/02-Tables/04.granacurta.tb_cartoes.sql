USE DB_GranaCurta
GO

--DROP TABLE granacurta.tb_cartoes

CREATE TABLE granacurta.tb_cartoes (
	id_cartao INT IDENTITY(1,1) NOT NULL,
	nm_cartao VARCHAR(100) NOT NULL,
	vl_limite NUMERIC(20, 2) NULL,
	nm_bandeira VARCHAR(100) NOT NULL,
	nm_4_ult_dig VARCHAR(4) NULL,
	--dt_vencimento SMALLDATETIME NULL,
	--dt_melhor_data SMALLDATETIME NULL,
	--dt_vencimento DATE NULL,
	--dt_melhor_data DATE NULL,
	vl_vencimento_dia INT NULL,
	vl_melhor_dia INT NULL,
	id_usuario INT NOT NULL,
	dt_criacao SMALLDATETIME NOT NULL,
	dt_alteracao SMALLDATETIME NULL,
	CONSTRAINT pk_cartoes PRIMARY KEY CLUSTERED (id_cartao),
	CONSTRAINT fk_cartoes_usuarios FOREIGN KEY (id_usuario) REFERENCES granacurta.tb_usuarios(id_usuario)
)
GO


