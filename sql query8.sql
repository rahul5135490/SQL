select id from emp;
select * from emp;
select id,ename from emp;
select distinct ename from emp;
select distinct address from emp;
select ename, address from emp where marks=90;
select ename, address from emp where last_name="gupta";
select	* from emp;
select distinct last_name from emp;
select ename,marks from emp where address="muz";
select id,ename from emp where address="patna";
select id, ename from emp where ename="ramesh";
select * from emp;
select marks,ename,id from emp where id=1;
select marks,ename,id from emp where id=1 or marks =87;
select id, ename,marks from emp where address="patna" or last_name="gupta";
select marks,ename,id from emp where id=1 or ename="rau";
select ename,marks from emp where marks=90 or marks=87;
select ename,marks from emp where marks=90 or ename="rahul";
select id, ename,marks from emp where address="patna" and last_name="gupta";
select * from emp;
select id, ename,marks from emp where marks=87 and last_name="sharma";
select id from emp where last_name="sharma" and ename="rahul";
select * from emp;
select id from emp where address="patna" and ename="rahul";
select marks from emp where ename="rahul" and marks=87;
select id from emp where last_name="sharma" and ename="komal";
select id from emp where address="patna" and ename="rahul";
select id from emp where address="patna" and marks=90;
select id from emp where address="muz" and ename="rahul";
select * from emp;
select distinctrow fav_pyjama from emp;
select distinct fav_pyjama from emp;
select * from emp where fav_pyjama="Chickenkari pyzama";