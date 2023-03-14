use amazon
create trigger User_Table
on  UserTable  
after INSERT 
As

BEGIN 
	SET nocount on;
   UPDATE UserTable set FullName = FirstName+' ' +LastName;
END

alter table UserTable Add JoiningDate date


--to create trigger
create trigger User_table_date
on UserTable
after Insert
as
BEgin 
set nocount on;
update UserTable set JoiningDate = GETDATE()
End

use amazon
create trigger User_table_date
on UserTable
after Insert
as
BEgin 
set nocount on;



insert into UserLogTable(UserId, LogInDate) values((select MAX(UserID) from UserTable),getdate())
End




