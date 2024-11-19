-- zera o estoque de todos os produtos
BEGIN TRANSACTION

BEGIN
	BEGIN TRY
		UPDATE PRODUTOS
		SET QTD_ESTOQUE = 0
	--WHERE ID_PRODUTO = 1;
	/*
		IF EXISTS(
		SELECT 1 FROM PRODUTOS 
		WHERE ID_PRODUTO = 1 AND QTD_ESTOQUE < 0
		)
		BEGIN
			THROW 50001, 'ERRO: ESTOQUE NAO PODE SER NEGATIVO',1;
		END;
	*/
        -- Confirma a transação
        COMMIT;
        PRINT 'Estoque atualizado com sucesso!';
    END TRY

    BEGIN CATCH
        -- Reverte a transação em caso de erro
        ROLLBACK;
        PRINT 'Erro ao atualizar estoque.';
        PRINT ERROR_MESSAGE(); -- Mostra a mensagem de erro
    END CATCH;
END;
GO
