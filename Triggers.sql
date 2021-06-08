#Triggers - triggers is a stored program or set of statements which invoke automatically to respond to the events
#such as insert, update, delete (DML Operations), we can apply triggers on DML operations only, otherwise it will not invoke
#trriggers is like procedure but it will invoke implicitly where as SP invokes explicitly.
#every time DML events occurs in a table along side triggers also fired before inserting row, or performing any DML operations
#mysql support only row level triggers but not statement level triggers in which row level fired for each row where as 
#stmt level fired once for each event or session for DML Operations

#Create triggers we can use create trigger clause to create a trigger
#triggers cannot be used with temporary table and views
#it must have a unique name within a schema, but we can have same name with different schema.
create trigger trigger_ex 
	after insert on employee for each row
    begin
    #trigger body
    end;
    
#Before Insert - befor insert trigger invoke automatically befor executing insert event.
#we cant apply before insert in views
#we cant access old colum. 
create trigger before_insert_example
	before insert on intern for each row
    #declare rowinsert varchar(50);
    #begin
		#new.department = 'Trainee_Developer' then set new.department = 'Associate S/W Engineer',
    #end;

#Drop Triggers- we can drop the triggers using drop trigger stmt as followss
drop trigger trigger_ex;

#Show triggers - it is used to listing out all the triggers. 
show triggers;