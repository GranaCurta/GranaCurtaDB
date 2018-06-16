USE DB_GranaCurta
GO

--DROP TABLE granacurta.tb_contas

CREATE TABLE granacurta.tb_tipos_contas (
	id_tipo_conta INT IDENTITY(1,1) NOT NULL,
	nm_tipo_conta VARCHAR(100) NOT NULL,
	dt_criacao SMALLDATETIME NOT NULL,
	dt_alteracao SMALLDATETIME NULL,
	CONSTRAINT pk_tb_tipos_contas PRIMARY KEY CLUSTERED (id_tipo_conta)
)
GO



