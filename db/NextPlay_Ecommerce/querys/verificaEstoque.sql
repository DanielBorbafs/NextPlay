 
/* VERIFICA ESTOQUE */

-- FORMA 01
SELECT NOME, QTD_ESTOQUE, PRECO 
FROM PRODUTOS 
WHERE QTD_ESTOQUE <= 1 
GO

-- FORMA 02
CREATE VIEW v_verifica_estoque as
    SELECT NOME,  QTD_ESTOQUE,
        CASE 
            WHEN  QTD_ESTOQUE <= 1 THEN 'Estoque Baixo, favor abastecer'  
            ELSE 'Estoque OK'
        END AS verifica_estoque
    FROM PRODUTOS
GO
SELECT * FROM v_verifica_estoque
ORDER BY QTD_ESTOQUE
GO