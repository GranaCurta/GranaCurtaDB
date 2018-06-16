USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [granacurta_user]    Script Date: 08/06/2018 21:47:26 ******/
CREATE LOGIN [granacurta_user] WITH PASSWORD=N'uI7cclgPYVR4jE+84YX1gHZeFvel+8aACpcHXUjFHkI=',
	DEFAULT_DATABASE=[master],
	DEFAULT_LANGUAGE=[us_english],
	CHECK_EXPIRATION=OFF,
	CHECK_POLICY=ON
GO

ALTER LOGIN [granacurta_user] DISABLE
GO


