``` sql
##bigint  не приводиться к jsonb, поэтому требуется двойное приведение  
select payload_old, jsonb_set(payload_old, '{clearingAmount}',amount:: text::jsonb ) from prod_otsda_data.mirgate_fot_555 ;  

##jsonb_set  требует три параметра jsonb,unknown, jsonb. В этом случае unknown '{correctionPayload, arn}' открывает скобки во вложенном джесоне  
select payload_old, jsonb_set(payload_old, '{correctionPayload, arn}', ) from prod_otsda_data.mirgate_fot_555  

## передает новый параметр в элемент  
select payload_old, jsonb_set(payload_old, '{clearingDate}', '123') from prod_otsda_data.mirgate_fot_555;
```

```sql
##запись trim(trailing()) отрезает с конца значение выбранный элемент 

select  (trim( trailing '}' from payload_old :: text) || ', "clearingAmount": ' || amount || '}'|| '}')::jsonb  
from prod_otsda_data.mirgate_fot_555 ;
```

```sql
## обновление записей в таблице 
UPDATE prod_otsda_data.mirgate_fot_555  
   SET payload_new =
```

```sql
## функция позволяет скастить до нужного типа/ -> позволяет вытащить из json вложенные параметры
cast (info -> 'clearing' -> 'newAmount' as bigint)
```

```sql
##функция interval принимает число и время 
operation.created_date > now() - interval '1 Day'
```

```sql
## функция date_trunc() разделяет выборку в разрезе выбранного времени 
## case выводит выборку при определенной фильтрации в заданном условии 

select date_trunc('DAY', t1.created_date) as operation_in_month,  
        case           when t1.operation_status = 'COMPLETED'  
		               then count(t1.operation_id)  
        end as clearing_is_ready,  
       case            when t1.operation_status = 'FINISHED'  
		               then count(t1.operation_id)  
        end as clearing_not_ready  
from prod_otsda_data.operation t1  
join prod_otsda_data.transaction using (operation_id)  
where schema_id in ('T60', 'Т63', 'T62','T90', 'T73', 'T21') and  
      t1.created_date > now() - interval  '30 Day' and  
      transaction_type in ('DEPOSIT','INPUT_PS','PURCHASE','REFUND', 'CASH_ADVANCE') and  
      operation_status in ('COMPLETED', 'FINISHED')  
group by operation_in_month,t1.operation_status
```

``` sql 
jsonb_build_object('params_text',params_volume)
инициализатор для блока jsonb
```

```sql 
round() функция округления 
```

``` sql 
extract(epoch from <передатьвремя>)
функция приводит к unixTimestamp 
```


```sql 
для выгрузки данных в юпей
select

       payload->'paymentReceiver'->>'value' merchant_id,

       case

           when transaction_role = 'OUTPUT_MERCHANTSP' then 'PAYMENTPROVIDER'

           when transaction_role = 'OUTPUT_PS' then 'CARDTOCARD'

               end as operation_type,

       sum(amount),

       sum((payload->>'humansFee')::bigint) as humansFee,

       count(1)

from prod_orsda_data.universal_transactions

where  provider_id in ('8')

and to_timestamp((provider_transaction_information->>'providerTransactionDate')::bigint) between '2023-02-01 00:00:00' and '2023-02-28 23:59:59'

and transaction_role='OUTPUT_MERCHANTSP'

-- and payload->'paymentReceiver'->>'value' not in('621', '666')

and status in ('FINISHED', 'COMPLETED')

group by 1, 2
```