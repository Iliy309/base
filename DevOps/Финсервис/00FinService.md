ƒ Все задачи на команду падают в jira structure в состоянии arch-dev-test-done -> e2e
 *Заявки* падают в фильтр finservice_hd 

 [Диаграмма взаимодействия продуктов](obsidian://open?vault=Base&file=DevOps%2F%D0%A4%D0%B8%D0%BD%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%2F01%D0%A1%D1%82%D1%80%D1%83%D0%BA%D1%82%D1%83%D1%80%D0%B0.canvas)

 [Диаграмма плеча склейки в FOT](obsidian://open?vault=Base&file=DevOps%2F%D0%A4%D0%B8%D0%BD%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%2F%D0%94%D0%B8%D0%B0%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B0%20%D0%BF%D0%BB%D0%B5%D1%87%D0%B0.canvas)

 

## Product 

 # PROC_processing
 Обвязка с адаптерами на TSYS
 # PIP_paymentIntegrationPlatform
 Отвечет за обработку всех платежей
	 Universal_transaction | Fintech_operation
 # LABS
 Cервис по начислению КБ
	 Operations | Accaunts
 # CARS
 Хранит всю информацию по банковским картам
	 Cards | Cards_details - cтатус карты и статус пина и рестрикшены
 # FPM
 Критерии доступности операции
	  2-3 таблицы?
 # FOT
 История операций
	 Operations | Transactions
 # CLR
 Клиринги - сверки
	 4-5 таблицы? 
*Prod APSDA*
	автоплатежи

	- Любая таблица имеет копию с припиской \_log, которая хранит историю
	- При обработке возврата redject, требуется указывать operation_id для purchase, который был создан при склейке



> [!Note] Термины
>- Debit - это учетная запись, которая либо увеличивает счет активов или расходов, либо уменьшает счет обязательств или акций. Он расположен слева в учетной записи. ГРубо- списание с абонента 
>- Credit - это учетная запись, которая либо увеличивает счет обязательств или акций, либо уменьшает счет активов или расходов. ГРубо - пополнение абонента  
> - Hold  - Период обработки оплачивемого действия 
> - Врол - интерфейс визы, где видно что туда приходило, какие запросы. Если туда дошло, а к нам нет -значит косяк в транспорте между нами. Если там неТ, то косяк скорее всего в транспорте мерча

>[!Note] Полезное
  - Cron (tab) Sheduler  https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules     

> [! Summary] 
> - [x] Скинуть инфу Денису, чтобы он внес в список команды 
> - [x] Попросить  добавить в рассылку на финсервис репорт и к дашборду https://humansinc.atlassian.net/jira/dashboards/10109 
> - [x] Напомнить Денису показать кролик
 
>[!warning] Вопросы: 
>  - Что такое Debit/Credit  
>  - Что такое Холд? 
>  - Почему java?  - SPRING
>  - в чем разница кибана и опенсерч
>  - почему в некоторые моменты data grip  не находит запрос при одном where  и требуется прописать дополнительное 
>  - Что такое маппинг? 
>  - Поискать\ попросить респонс коды
>  - откуда Денис придумал респос код 05 в своём скрипте? 
>  - В скрипте Дениса описано что делают функции, но я не увидел где они вызываются. Так же не понятно почему cx_Oracle

``` sql
create view __ as  = синтаксис скастить  запрос по аналогии с функцией

payload ->> 'cardseno' = '1231313' синтаксис разбора json в oracle
```

# Колонки таблиц
#Tsys
**Payload** JSON набор данных 
**DebitHostType** тип состояния операции
- Purchases 
- Refund urchases
- Cash advanse 
- OCT входящий перевод
**Transaction_status** cтатус транзакции
- FINISHED
- DENIED
- ROLLED_BACK
**Transaction_type** тип транзакции
- OUTPUT_MARCHANTSP 
- TEMP_CHARGE билинговое списание -холд
- PURCHASE оплата 
- REVERSAL возврат 
- CASHBACK кб
- INPUT_PS входящий перевод 
**LTIMESTAMP** время холда +5
**I000_MSG_TYPE?**
- 0110 запрос на списание 
- 0410 запрос на реверсал
- 0430 запрос на реверсал?
**I039_RSP_CD** код ответа [ссылка на конфу](https://humansinc.atlassian.net/wiki/spaces/PROC/pages/791055038/Debit+Host+Converter+TAS)
- 91 обычно таймаут/ошибка которую Tsys -> VIsa
- 00 операция успешна 
- 51 недостаточно средств 
- 7n?
**MERCH_Name** название лица или стороны в операции
**AMAUNT** сумма операции ? В FOT измеряетс в копейках
**ARN?** айди клиринга 
**RRN?** уникальный айди авторизации в рамках мерча 
**CardSerno** индефикатор статуса абонента
**operation_type** тип операции 
**operation_status** статус операции 
- Rolled Back
- AuTh_Declined операция не успешная
**base_operation_id** первоначальное id операции 

#Fot
**operation_spec_id** спецификация 
- T73_1
**POSTDATE**  Время обработки файла транзакции 
**TRNX_DATE** Дата оформления транзакции 
**TRXNSRENO** 
-5 значит в теченни 5 дней не пришел клиринг ?
-1 значит что клиринг не  пришел в  течении 15 дней 

#Url #Ports
|**Port**| **URL** |**Service**|
|---|---|---|
|8501| / |Consul UI|
|443| /doc/| Documentation Public API |
| 443| /stats| HA Proxy Statistic|
|15673| / |Rabbit MQ Management Interface (HTTP)|
| 5672|/|Rabbit MQ AMQP (TCP)|


```SQL для Prime

select POSTDATE,  
       I013_TRXN_DATE,  
       t.orig_msg_type                                  DebitHostTypeId,  
       I042_MERCH_ID,  
       I043A_MERCH_NAME,  
       Decode(Trim(t.orig_msg_type),  
              '05', 'Purchases',  
              '25', 'Purchases Reversal',  
              '06', 'Refund purchases',  
              '26', 'Refund purchases Reversal',  
              '07', 'Cash advance',  
              '27', 'Cash advance Reversal',  
              '08', 'OCT',  
              '28', 'OCT Reversal',  
              '09', 'Cashback',  
              '29', 'Cashback Reversal',  
              'Undefined')                              DebitHostType,  
       t.i004_amt_trxn                                  amount,  
       t.i006_amt_bill                                  accountAmount,  
       t.serno,  
       case           when t.I006_AMT_BILL + fee.FEEAMOUNT is null  
               then t.I006_AMT_BILL  
           when t.I006_AMT_BILL + fee.FEEAMOUNT is not null  
               then t.I006_AMT_BILL + fee.FEEAMOUNT end clearing_amount,  
    I031_ARN,  
    I002_NUMBER,  
    I037_RET_REF_NUM  
from ctransactions t  
         Join ilcisotrxns i On t.serno = i.serno  
         left join CTRXNFEESCALC fee on fee.TRXNSERNO = t.SERNO and fee.TRXNAMOUNT = t.I006_AMT_BILL  
  
where CARDSERNO = '2937472'--v2'83062' --and I043A_MERCH_NAME = 'PINDUODUO' --like ('PANDORA%')  
--   where I031_ARN = ''  
  and ORIG_MSG_TYPE != 'ISOM'  
order by POSTDATE desc;  
  
  
  
select  
Decode(Trim(orig_msg_type),  
  
      '05', '00',  
      '25', '20',  
      '06', '20',  
      '26', '20',  
      '07', '01',  
      '27', '20',  
      '08', '26',  
      '28', 'OCT Reversal',  
      'Undefined')      DebitHostType,  
I032_ACQUIRER_ID AS pai_acquirer_id,  
I042_MERCH_ID AS pai_merchant_id,  
I037_RET_REF_NUM AS pai_retrieval_reference,  
SUBSTR (I037_RET_REF_NUM, 7, 6)   AS pai_provider_transaction_id,  
--ROUND(date_to_unix_ts(I013_TRXN_DATE)) AS "date" ,  
t.SERNO  || '_' ||  I037_RET_REF_NUM AS pai_authorization_serno,  
  
case  
           when I049_CUR_TRXN = '840' then 'USD'  
           when I049_CUR_TRXN = '860' then 'UZS'  
           when I049_CUR_TRXN = '643' then 'RUR'  
           when I049_CUR_TRXN = '949' then 'TRY'  
           when I049_CUR_TRXN = '398' then 'KZT'  
           when I049_CUR_TRXN = '446' then 'MOP'  
           when I049_CUR_TRXN = '978' then 'EUR'  
           else 'NONE'  
           end             currency,  
  
I005_AMT_SETTLE*100 AS input_amount,  
I006_AMT_BILL*100 AS AMOUNT_BILL,  
CARDSERNO AS cardserno,  
       Case      When Substr(ot.rawdata, 366, 8) <> '        ' Then  
        to_char(to_date(Substr(ot.rawdata, 366, 8),'yyyymmdd'),'dd.mm.yyyy')  
      When Substr(ot.rawdata, 366, 8) = '        ' and t.POSTDATE is not null Then     to_char(t.postdate,'dd.mm.yyyy')  
           else  ''  
  End              SettlementDate,  
I002_NUMBER AS cardnumber,  
       I043A_MERCH_NAME,  
       I031_ARN as ARN  
       --date_to_unix_ts(POSTDATE) as POSTDATE  
from ilctransactions t  
    Join ilcisotrxns i On t.serno = i.serno  
Join iloriginaltrxns ot On t.serno = ot.TRXNSERNO   And ot.PARTITIONKEY = t.partitionkey And ot.format = 'FMON' And  ot.subformat = 'KONT'  
WHERE i031_arn IN('74641763032000113465582');
```

```SQL для Online
select LTIMESTAMP, I039_RSP_CD,  
       I043A_MERCH_NAME,  
       I004_AMT_TRXN,  
       I006_AMT_BILL,  
       I037_RET_REF_NUM,  
       TRXNSERNO,  
       a.* from authorizations a where primecardserno = '2125268'  
order by serno desc;
```



``` SQL
1. запрос, который вернет количество успешных платежей за последние 6 минут по T73_1  
  
select count(*)  
from prod_otsda_data.operation  
where operation_spec_id = 'T73_1' and operation_status in ('FINISHED', 'COMPLETED')  
  and created_date > now() - interval '6 minute'  
  
  
  
2. запрос, который вернет количество успешных платежей за последние 6 минут по T21  
  
  
select count(*)  
from prod_otsda_data.operation  
where schema_id = 'T21' and operation_status in ('FINISHED', 'COMPLETED')  
  and created_date > now() - interval '6 minute'  
  
  
3. запрос, который вернет сумму успешных платежей за последние 6 минут по T73_1  
  
select sum(amount)  
from prod_otsda_data.operation  
where operation_spec_id = 'T73_1' and operation_status in ('FINISHED', 'COMPLETED')  
  and created_date > now() - interval '6 minute'  
  
  
4. Запрос, который вернет статистику в разрезе часа по успешным платежам по T73_1 за последние сутки (24 часа)  
select date_trunc('hour', created_date) as operationInHour,  
       count(operation_status)  
  
from prod_otsda_data.operation  
where operation_spec_id= 'T73_1' and operation_status in ('FINISHED','COMPLETED')  
  and created_date > now() - interval '1 Day'  
group by operationInHour  
  
  
5. вывести информацию по платежам с БК HUMANS в виде:  
--  
-- Дата операции, оперейшен ид, транзакшен ид, мерчант нейм, терминал_ид, сумма в валюте, валюта, сумма в UZS, статус, Заклирена ли операция (true/false)  
  
select t1.created_date,  
       operation_id,  
       transaction_id,  
       terminal_id,  
       merchant_id,  
       payload->> 'merchantName',  
       transaction_type,  
       t1.amount,  
       t1.amount_currency,  
       transaction_status,  
       operation_status,  
       case           
	    when operation_status = 'COMLETED'  
	        then true  
	        else false           
	    end as clearingIsReady  
from prod_otsda_data.transaction t1  
    join prod_otsda_data.operation using (operation_id)  
where schema_id in ('T60', 'Т63','T62','T90', 'T73')  
and t1.created_date > now() - interval  '1 Day'  
and transaction_type in ('DEPOSIT', 'INPUT_PS','PURCHASE','REFUND')
 
6. вывести информацию по операциям маркетплейса, которые были совершены с нашей банковской карты, но не склеены в фот  
  
select operation_status, prod_otsda_data.transaction.terminal_id, operation_id  
from prod_otsda_data.operation  
         join prod_otsda_data.transaction using (operation_id)  
where schema_id = 'T60' and terminal_id = 'XXX' and  merchant_id = 'E2022079'  
and operation.created_date > now() - interval '1 Day'



7. В разрезе месяца вывести кол-во НЕ склиренных операций по БК хуманс, за последние полгода  
  
select date_trunc('day', t1.created_date) as operation_in_month, count(operation_id)  
from prod_otsda_data.operation t1  
join prod_otsda_data.transaction using (operation_id)  
where schema_id in ('T60', 'Т63', 'T62','T90', 'T73', 'T21') and  
      t1.created_date > now() - interval  '30 Day' and  
      transaction_type in ('DEPOSIT','INPUT_PS','PURCHASE','REFUND','CASH_ADVANCE') and  
      operation_status = 'FINISHED'  
group by  operation_in_month;


8.В разрезе месяца вывести кол-во НЕ склиренных и склиреннхы операций по БК хуманс, за последние полгода

select date_trunc('DAY', t1.created_date) as operation_in_month, operation_status,  
       case           when operation_status = 'COMPLETED' then 'clearing_exist'  
           when operation_status = 'FINISHED' then 'clearing_not_exist'  
           end as status,  
        case           when t1.operation_status = 'COMPLETED' then count(t1.operation_id)  
           when t1.operation_status = 'FINISHED' then count(t1.operation_id)  
        end as count  
  
from prod_otsda_data.operation t1  
join prod_otsda_data.transaction using (operation_id)  
where schema_id in ('T60', 'Т63', 'T62','T90', 'T73', 'T21') and  
      t1.created_date > now() - interval  '2 Day' and  
      transaction_type in ('DEPOSIT','INPUT_PS','PURCHASE','REFUND', 'CASH_ADVANCE') and  
      operation_status in ('COMPLETED', 'FINISHED')  
group by operation_in_month,t1.operation_status


9.Скрипт возращает дубликаты по полю externalTransactionId

select *  
from prod_otsda_data.operation  
where amount != cast(info -> 'clearing' -> 'newAmount' as bigint);  
  
select  t1.operation_id, t2.operation_id  
from prod_otsda_data.transaction t1  
join prod_otsda_data.transaction t2 on t1.payload ->> 'externalAuthorizationId' = t2.payload ->> 'externalAuthorizationId' and  
                                       t1.merchant_id = t2.merchant_id and  
                                       t1.external_transaction_id <> t2.external_transaction_id and  
                                      t1.payload ->>'cardSerno' = t2.payload ->>'cardSerno'  
where t1.operation_id = '01GTENFE1QXMW6ERX5KPNQ94PG'
```


``` 259146ba11a3f8ec:5e68788471ac2f3a:79e8f129391b6032:1
Логика с2с переводов nps

Пришел запрос в пип, он говорит PPI попробуем? 

PPI  выдает запрос в PAS , а можем ли мы провести это? .getOperationOpportunities -

Cпрашивает CARS что это вообще за карта? расшифруй .decodeDataV1 и найди .searchForCardsV1 +

Он её находит и говорит BPS проверь она привязана ? .getBindingById. 
Сначало стучит в BPSAPI -> BindingPaymentServiceApi. 
Потом идет в BPSDAApi ->BindingPaymentServiceDatabaseAdapterDBApi Получаем ок

Идем дальше в FPM спрашиваем, можно ли?
.checkTransferAvailabilityV1
-да пожалуйста, только сохранитесь у UCP

UCP спрашивает вторая карта существует, куда она привязана.
.resolveIdentifiersV1
-ищем её  идем в обратном порядке BPSDAApi ->BindingPaymentServiceDatabaseAdapterDBApi -> BPSApi -> BindingPaymentServiceApi -> CARSApi

И идет в UPA  и получает информацию о картах 
.searchListNpsCardInfoRest .getBatchCardInfoUpay

Затем говорит RM, можно нам? Если да, лимит там какой? 
.updateAccumlistV1

После чего приходит ответ на PAS  по 
.getOperationOpportunities

Передает их в ORS, с помощью paymentProviderOperations формирует блок операции, обменивается данными и регистрирует их в ORSDA

Шлет сообщение в кролик

И говорит UPA проводить. Приходит ок
.npsToNpsTransfer

Кроллик дублирует сообщение об удачной операции

PPI получает ок 

Кролик создает эвент и записывает в него данные по операции 

Биллинг проводит свое списание  
CBS.createActivity

Идет в ORS, с помощью paymentProviderOperations формирует блок операции, обменивается данными и регистрирует их в ORSDA

Кролик дергает CustomerNotificationsManagementApi и через transmitMessageV1 кидает разрешение на отправку нотификации клиенту

ORS обновляет данные по кэшбеку, и  шлет всю информацию в фот и записывает в ORSDA

CustomerNotificationsManagementApi получает ОК и нотификация летит клиенту

ORS обновляет данные 

BPS через .searchBindings проверяет создание привязки 

APS через getBindingAutoTopup проверяет создание автосписания 

```
