
/* Trazemos uma subconsulta com o lucro liquido, pois ela diminui o lucro total pelos gastos */
SELECT 
    (SELECT SUM(VALOR_TOTAL) FROM VENDAS) - 
    (SELECT SUM(SALARIOS + COMPRA_ESTOQUE) FROM [GASTOS MENSAIS]) AS LUCRO_LIQUIDO;
GO