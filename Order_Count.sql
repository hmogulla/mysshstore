

SELECT COUNT (1) total_orders
  FROM jcrew_store.v_order_header
 WHERE orh_create_dt BETWEEN TO_DATE ('03/14/2012-11:45:00',
                                      'MM/DD/YYYY-HH24:MI:SS'
                                     )
                         AND TO_DATE ('03/14/2012-01:00:00',
                                      'MM/DD/YYYY-HH24:MI:SS'
                                     );

For J Crew only orders

select count(*) FROM jcrew_store.v_order_header where orh_create_dt between TO_DATE ('09-Apr-2013 13:00:00','DD-MON-YYYY HH24:MI:SS') AND TO_DATE ('09-Apr-2013 14:00:00','DD-MON-YYYYHH24:MI:SS');



For factory only orders


select count(*) FROM madewell_store.v_order_header where orh_create_dt between TO_DATE ('17-JAN-2013 04:35:00','DD-MON-YYYY HH24:MI:SS') AND TO_DATE ('17-JAN-2013 05:00:00','DD-MON-YYYYHH24:MI:SS');

MADEWELL GOLD QA 

 

select ORH_NM FROM mwgld_store.v_order_header where orh_create_dt between TO_DATE ('14-JAN-2013 10:00:00', 'DD-MON-YYYY HH24:MI:SS') AND TO_DATE ('14-JAN-2013 17:00:00', 'DD-MON-YYYY HH24:MI:SS');

 

MADEWELL PRE_PROD 

select count(*) FROM madewell_store.v_order_header where orh_create_dt between TO_DATE ('09-Apr-2013 18:15:00','DD-MON-YYYY HH24:MI:SS') AND TO_DATE ('09-Apr-2013 19:15:00','DD-MON-YYYYHH24:MI:SS');



select count(*) FROM madewell_store.v_order_header where orh_create_dt between TO_DATE ('09-Apr-2013 13:00:00','DD-MON-YYYY HH24:MI:SS') AND TO_DATE ('09-Apr-2013 13:00:00','DD-MON-YYYYHH24:MI:SS');