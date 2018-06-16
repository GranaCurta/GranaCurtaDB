USE DB_GranaCurta
GO

--DROP TABLE granacurta.tb_contas

CREATE TABLE granacurta.tb_contas (
	id_conta INT IDENTITY(1,1) NOT NULL,
	nm_conta VARCHAR(100) NOT NULL,
	vl_limite_ce NUMERIC(20, 2) NULL,
	id_usuario INT NOT NULL,
	id_tipo_conta INT NOT NULL,
	dt_criacao SMALLDATETIME NOT NULL,
	dt_alteracao SMALLDATETIME NULL,
	CONSTRAINT pk_tb_contas PRIMARY KEY CLUSTERED (id_conta),
	CONSTRAINT fk_tb_usuarios FOREIGN KEY (id_usuario) REFERENCES granacurta.tb_usuarios(id_usuario),
	CONSTRAINT fk_tb_tipos_contas FOREIGN KEY (id_tipo_conta) REFERENCES granacurta.tb_tipos_contas(id_tipo_conta)
)
GO


