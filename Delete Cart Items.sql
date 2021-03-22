select usr.usa_email, count(crt.crt_sku_id) "Item Count" from jcrew_store.USER_ACCOUNT usr
join jcrew_store.V_CART_HEADER crthd on usr.usa_id = crthd.cth_created_for
join jcrew_store.CART_ITEM crt on crt.crt_cth_id = crthd.cth_id
where usr.usa_email like 'jcrew%@jcrew.com'
group by usr.usa_email 
order by 2 desc

select * from jcrew_store.cart_item


delete jcrew_store.cart_item crt
where crt.crt_cth_id 
in (select crthd.cth_id from jcrew_store.V_CART_HEADER crthd 
join jcrew_store.USER_ACCOUNT usr on usr.usa_id = crthd.cth_created_for
where usr.usa_email  like 'jcrew%@jcrew.com'
)	
select * from jcrew_store.v_cart_header
