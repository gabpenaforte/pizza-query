-- Databricks notebook source
SELECT *
FROM silver.pizza_query.item_pedido

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup = TRUE

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup = true 
AND 
txtRecado IS NOT NULL

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup = true 
AND descUF = 'Rio de Janeiro'

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup = true 
AND descUF = 'Rio de Janeiro'
AND txtRecado IS NOT NULL
