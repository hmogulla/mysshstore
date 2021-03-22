select b.usa_email, count(*) from jcrew_store.credit_card a
join jcrew_store.user_account b on a.ccd_usa_id = b.usa_id
where b.usa_email like 'kf2%@jcrew.com' and CCD_status_cd = 'ENB'
group by b.usa_email 
order by 2 desc

delete jcrew_store.credit_card 
where ccd_usa_id in ( 
select usa_id from jcrew_store.user_account
where usa_email in (
'kf221@jcrew.com',
'kf234@jcrew.com'
))

select * from jcrew_store.credit_card
update jcrew_store.credit_card set ccd_status_cd = 'DSB'
where ccd_usa_id in (
select * from jcrew_store.user_account
where usa_email like 'kf%@jcrew.com')