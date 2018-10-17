USE DB_GranaCurta
GO

--DROP TABLE granacurta.tb_categorias

CREATE TABLE granacurta.tb_categorias (
	id_categoria INT IDENTITY(1,1) NOT NULL,
	nm_categoria VARCHAR(100) NOT NULL,
	dt_criacao SMALLDATETIME NOT NULL,
	dt_alteracao SMALLDATETIME NULL,
	CONSTRAINT pk_categorias PRIMARY KEY CLUSTERED (id_categoria)
)
GO


