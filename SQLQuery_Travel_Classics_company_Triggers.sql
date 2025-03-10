CREATE TRIGGER Insert_trigger ON	[dbo].[Traveler]
FOR INSERT 
AS
	declare @L_Name varchar(25);
	declare @F_Name varchar (25);
	declare @U_ID int;

	select @U_ID=i.U_ID from inserted i;
	select @F_Name=F_Name From inserted i;
	select @L_Name=L_Name From inserted i;

	insert into Travelers_Login 
			(Username,U_Password,U_ID)
	values(@F_Name,@L_Name,@U_ID);
	PRINT'AFTER INSERT TRIGER FIRED.'
	GO


	CREATE TRIGGER Insert_trigger_Hotel ON [dbo].[Hotel]
FOR INSERT 
AS
	declare @H_Name varchar(255);
	declare @City varchar (50);
	declare @H_ID nvarchar(9);

	select @H_ID = i.Hotel_ID from inserted i;
	select @H_Name = i.Hotel_Name from inserted i;
	select @City = i.City from inserted i;

	insert into Hotel_Login (H_username, U_Password, H_ID)
	values (@H_Name, @City, @H_ID);

	PRINT 'AFTER INSERT TRIGGER FIRED.';
GO




	