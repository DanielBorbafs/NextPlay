/* Listando produtos que estão com o preço acima da média */

SELECT NOME, PRECO 
FROM PRODUTOS 
WHERE PRECO > (SELECT AVG(PRECO) FROM PRODUTOS)