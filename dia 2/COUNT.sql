-- Databricks notebook source
SELECT count(*),
      count(1),
      count(idPedido)
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(*)

FROM silver.pizza_query.pedido

WHERE flKetchup IS NOT NULL

-- COMMAND ----------

SELECT count(*)

FROM silver.pizza_query.pedido

WHERE flKetchup IS NOT NULL
AND descUF = 'Goiás'

-- COMMAND ----------

SELECT descUF,
      count(*)

FROM silver.pizza_query.pedido

GROUP BY descUF

-- COMMAND ----------

SELECT descUF,
      count(*) as qtdePedidos

FROM silver.pizza_query.pedido

GROUP BY descUF
ORDER BY qtdePedidos DESC

LIMIT 6

-- COMMAND ----------

SELECT descUF,
      count(*) as qtdePedidos

FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF

HAVING qtdePedidos >= 75

ORDER BY qtdePedidos DESC

LIMIT 5

-- COMMAND ----------

SELECT * 

FROM silver.pizza_query.produto
WHERE descItem LIKE '%abacaxi%'

-- COMMAND ----------

SELECT descUF,
      flKetchup,
      count(*)

FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup
