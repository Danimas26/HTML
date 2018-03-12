SELECT * FROM crmqa2014.cmenvirosystems_amc where accname="'";

SELECT * FROM crmqa2014.cmenvirosystems_products ;

SELECT * FROM crmqa2014.subscription limit 10;

SELECT * FROM crmqa2014.cmenvirosystems_amc order by id desc limit 10 ;

SELECT * FROM crmqa2014.cmenvirosystems_amc where id = 217 ;

SELECT * FROM crmqa2014.cmenvirosystems_amcproductline where amcid = 271 limit 5;

SELECT * FROM crmqa2014.cmenvirosystems_acc_contacts where acc_id = (SELECT accid FROM crmqa2014.cmenvirosystems_amc where id = 217) limit 10;

SELECT * FROM crmqa2014.cmenvirosystems_amcpmsline where amcid = 271 limit 10;

SELECT * FROM crmqa2014.cmenvirosystems_amcprodsrno where amcid = 271 limit 10;

SELECT * FROM crmqa2014.cmenvirosystems_amc_payment where amcid = 271 limit 10;

SELECT * FROM crmqa2014.cmenvirosystems_accounts  where id = (SELECT accid FROM crmqa2014.cmenvirosystems_amc where id = 217) or bpin = 400063  limit 100;

SELECT * FROM crmqa2014.cmenvirosystems_noteslist  where amcid = 271 or id = (SELECT accid FROM crmqa2014.cmenvirosystems_amc where id = 217)  limit 10;

SELECT * FROM crmqa2014.cmenvirosystems_activity  where amcid = 271 limit 10; 

select *,mode from cmenvirosystems_activity where accname like '%Test New Lead 5%';

desc cmenvirosystems_activity;

SELECT * FROM crmqa2014.cmenvirosystems_accounts  where id = 9047  limit 100;

SELECT * FROM crmqa2014.cmenvirosystems_uploaddoc where amcid = 271 limit 10;

SELECT * FROM crmqa2014.cmenvirosystems_uploaddoc where filename like '%Koala%';

SELECT * FROM crmqa2014.cmenvirosystems_noteslist  where amcid = 271 or id = (SELECT accid FROM crmqa2014.cmenvirosystems_amc where id = 217)  HAVING id > 5000 limit 10;


SELECT UCASE(accname) AS Customer, accid FROM crmqa2014.cmenvirosystems_noteslist limit 10;



select * from cmenvirosystems_acc_contacts group by acc_id limit 10;


select * from cmenvirosystems_acc_contacts group by acc_id having count(acc_id) > 2;





