/* Trazendo as informações dos clientes que mais compraram */
SELECT NOME, TELEFONE, EMAIL, [TOTAL GASTO], SEXO FROM CLIENTES
ORDER BY [TOTAL GASTO] 
DESC
GO