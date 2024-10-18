/* Afim de fazer uma mala direta precisamos do contato de clientes que possuem cadastro,
mas nunca compraram em nossa loja. */

SELECT NOME, TELEFONE, EMAIL, [TOTAL GASTO]
FROM CLIENTES
WHERE [TOTAL GASTO] = 0