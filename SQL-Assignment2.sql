

Select o.customer_id,c.first_name,c.last_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = ‘2TB Red 5400 rpm SATA III 3.5 Internal NAS HDD’
order by customer_id;


Select o.customer_id,c.first_name,c.last_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = ‘Polk Audio - 50 W Woofer - Black’
order by customer_id;


Select o.customer_id,c.first_name,c.last_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = ‘SB-2000 12 500W Subwoofer (Piano Gloss Black)’
order by customer_id;


Select o.customer_id,c.first_name,c.last_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = ‘Virtually Invisible 891 In-Wall Speakers (Pair)’
order by customer_id;

Select base.customer_id,base.first_name,base.last_name,
ISNULL(NULLIF(ISNULL(NULLIF(f1.product_name,'Yes'),'No'),'Polk Audio - 50 W Woofer - Black'),'Yes') as first_product,
ISNULL(NULLIF(ISNULL(NULLIF(f2.product_name,'Yes'),'No'),'SB-2000 12 500W Subwoofer (Piano Gloss Black)'),'Yes') as second_product,
ISNULL(NULLIF(ISNULL(NULLIF(f3.product_name,'Yes'),'No'),'Virtually Invisible 891 In-Wall Speakers (Pair)'),'Yes') as third_product
from 
(Select o.customer_id,c.first_name,c.last_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = '2TB Red 5400 rpm SATA III 3.5 Internal NAS HDD'
) base left join (
    Select o.customer_id,c.first_name,c.last_name,p.product_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = 'Polk Audio - 50 W Woofer - Black'
) f1 
on f1.customer_id =  base.customer_id
left join (Select o.customer_id,c.first_name,c.last_name,p.product_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = 'SB-2000 12 500W Subwoofer (Piano Gloss Black)') f2
on f2.customer_id =  base.customer_id
left join (Select o.customer_id,c.first_name,c.last_name,p.product_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = 'Virtually Invisible 891 In-Wall Speakers (Pair)') f3
on f3.customer_id =  base.customer_id
ORDER BY base.customer_id





Select base.customer_id,base.first_name,base.last_name,
ISNULL(NULLIF(ISNULL(NULLIF(f1.product_name,'Yes'),'No'),'Polk Audio - 50 W Woofer - Black'),'Yes') as first_product,
ISNULL(NULLIF(ISNULL(NULLIF(f2.product_name,'Yes'),'No'),'SB-2000 12 500W Subwoofer (Piano Gloss Black)'),'Yes') as second_product,
ISNULL(NULLIF(ISNULL(NULLIF(f3.product_name,'Yes'),'No'),'Virtually Invisible 891 In-Wall Speakers (Pair)'),'Yes') as third_product
from 
(Select o.customer_id,c.first_name,c.last_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = '2TB Red 5400 rpm SATA III 3.5 Internal NAS HDD'
) base left join (
    Select o.customer_id,c.first_name,c.last_name,p.product_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = 'Polk Audio - 50 W Woofer - Black'
) f1 
on f1.customer_id =  base.customer_id
left join (Select o.customer_id,c.first_name,c.last_name,p.product_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = 'SB-2000 12 500W Subwoofer (Piano Gloss Black)') f2
on f2.customer_id =  base.customer_id
left join (Select o.customer_id,c.first_name,c.last_name,p.product_name from sale.order_item i
join product.product p on p.product_id = i.product_id
join sale.orders o on o.order_id = i.order_id
join sale.customer c on c.customer_id = o.customer_id
where p.product_name = 'Virtually Invisible 891 In-Wall Speakers (Pair)') f3
on f3.customer_id =  base.customer_id
ORDER BY base.customer_id;
