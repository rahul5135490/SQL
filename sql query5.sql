create trigger sample_trigger2 
before insert 
on emp
for each row
set new.marks = new.marks+10;