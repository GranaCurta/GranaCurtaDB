USE DB_GranaCurta
GO

--DROP TABLE granacurta.tb_usuarios

CREATE TABLE granacurta.tb_usuarios (
	id_usuario INT IDENTITY(1,1) NOT NULL,
	nm_usuario VARCHAR(100) NOT NULL,
	nm_email VARCHAR(500) NOT NULL,
	pass VARCHAR(500) NOT NULL,
	dt_criacao SMALLDATETIME NOT NULL,
	dt_alteracao SMALLDATETIME NULL,
	CONSTRAINT pk_tb_usuarios PRIMARY KEY CLUSTERED (id_usuario)
)
GO


