USE [Administracao]
GO
/****** Object:  StoredProcedure [dbo].[AlterarProduto]    Script Date: 07/11/2017 17:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[AlterarProduto]
	@IdProduto int,
	@Produto varchar(50),
	@QtdEstoque decimal,
	@ValCompra decimal,
	@ValVenda decimal
AS
BEGIN
	UPDATE Produto
		SET	Produto=@Produto,
		QtdEstoque=@QtdEstoque,
		ValCompra=@ValCompra,
		ValVenda=@ValVenda	
		WHERE IdProduto=@IdProduto
END