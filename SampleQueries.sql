/*INSERT QUERY*/
INSERT INTO public."PIZZAS" ("Pizza_ID", "Pizza_Type", "Cost") Values('PP-1243', 'PERIPERI', '1000');
/*CROSS-JOIN QUERY*/
SELECT * FROM public."PIZZAS" CROSS JOIN public."PIZZA_INGREDIENTS";
/*UPDATE QUERY*/
UPDATE public."PIZZA_SALES" SET "Date" = '2022-10-28' WHERE "Sales_ID" = 921782;
/*DELETE QUERY*/
DELETE FROM public."PIZZAS" WHERE "Pizza_ID" = 'PP1543';
/*SubQuery*/
SELECT AVG("Cost"::numeric::float8) FROM public."PIZZAS";
SELECT "Pizza_ID", "Pizza_Type", "Cost" FROM public."PIZZAS" WHERE "Cost"::numeric > 916;