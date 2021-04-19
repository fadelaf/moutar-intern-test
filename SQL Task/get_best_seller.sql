
SELECT best_seller.product_name, max(sum) as sum FROM
	(SELECT  product_name , sum(number_of_sold) as sum from product_sold group by product_name) as best_seller
    where sum > 1
    group by best_seller.product_name;