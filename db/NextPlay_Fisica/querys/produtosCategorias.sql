/* Essa query traz os produtos e suas respectivas categorias*/
SELECT P.NOME, C.CATEGORIA
FROM PRODUTOS P 
INNER JOIN CATEGORIAS C ON P.ID_CATEGORIA = C.ID_CATEGORIA
GO