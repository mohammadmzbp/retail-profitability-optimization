

# PRODUCT WISE MARGIN

SELECT product,
SUM(sales) total_sales,
SUM(profit) total_profit,
ROUND(SUM(profit)/SUM(sales),2) margin
FROM retail_sales
GROUP BY product
ORDER BY margin;

/*
What happened?
-- Profit continuously drops as discount increases.
-- At 30% and 40% discount → company makes loss.
-- Sales increase but margin collapses.

Business Meaning
-- Company is over-discounting products to increase sales volume, but revenue growth is not translating into profit.

-- Profit decline is primarily driven by aggressive discount strategies. Analysis shows that profit decreases consistently as discount increases, 
and discounts above 30% lead to negative profitability. This indicates that sales growth is achieved at the cost of margin erosion.*/



# REGION-WISE LOSS ANALYSIS

SELECT region,
SUM(profit) total_profit
FROM retail_sales
GROUP BY region
ORDER BY total_profit;

/*
What happened?
-- Some products sell a lot but generate very low profit per sale.

For Example:
-- Mobile has huge revenue but low margin → hurts overall profitability.

Business Meaning
-- High demand products with low margins reduce overall profit even when sales grow.

-- Product-wise margin analysis shows that certain high-volume products such as Mobile generate substantial sales but operate at very low profit
 margins. These low-margin products reduce overall profitability despite increasing revenue.*/




# DISCOUNT IMPACT ON PROFIT 

SELECT discount_percent,
AVG(profit) avg_profit
FROM retail_sales
GROUP BY discount_percent
ORDER BY discount_percent;

/*
What happened?
-- No region is causing losses.

Business Meaning
-- Operational efficiency across regions is good. Profit decline is not driven by geographic performance.

-- Region-wise analysis shows that all regions generate positive profit, indicating that profit decline is not due to geographic performance 
but is mainly driven by pricing and product margin issues.*/


# FINAL CONCLUSION

/*The analysis identified that profit decline despite high sales is mainly caused by aggressive discounting and low-margin products. Higher discount 
levels significantly reduce profitability and lead to losses beyond 30% discount. Additionally, certain high-volume products operate with low margins, 
further reducing overall profit. Regional performance was stable and did not contribute to profit decline.*/


