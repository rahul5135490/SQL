select * from emp;
select count(id), address from emp
group by address
order by address;
select address from emp where address is not null;
select * from emp;
update emp
set fav_food="Biryani", fav_sports="kabaddi", fav_pyjama="Chickenkari pyzama",fav_car="pajero"
where id=3;
update emp
set ename="komal", last_name="srivastava"
where id=4;