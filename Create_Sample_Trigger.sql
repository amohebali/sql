## Create Sample Trigger
Create Trigger [schema].[trgAfterInsert] on [schema].[table_name]
After insert
As
insert into target (fieled_1,....)
	select i.fieled1,i.fieled2,... 
	  from table_name
	  inner join inserted i
	  on table_name.fieled = i.fieled


Create Trigger [schema].[trgAfterUpdate] on [schema].[table_name]
After Update
As
update DB_name.schema.target
	set
	item1 = i.item1,
	....
	from table_name  inner join inserted i
	on table_name.fieled = i.fieled
	where target.fieled = table_name.fieled


Create Trigger [schema].[trgAfterDelete] on [schema].[table_name]
After Delete
As
Declare @_var nvarcher(max);
select @_var = i.fieled from deleted i ;
delete from schema.target where target.fieled = @_var;

