
use MangoJRLibrary
GO

if (select object_id('usp_BooksReadByPerson')) IS NULL
	exec sp_executesql N'CREATE PROC usp_BooksReadByPerson AS SELECT 1 ''ALPHA'''
GO

alter proc usp_BooksReadByPerson (
@personid int )
as

select bo.BookID, Title, p.PersonID, FirstName+''+LastName PersonName
from ReadHistory rh
join BooksOwned bo on rh.BookID=bo.BookID
join Person p on rh.PersonID=p.PersonID
where p.PersonID=@personid

