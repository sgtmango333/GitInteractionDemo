
use MangoJRLibrary
GO

create view BooksReadInLastYear as
select StartDate, EndDate, bo.BookID, Title, p.PersonID, FirstName+''+LastName PersonName
from ReadHistory rh
join BooksOwned bo on rh.BookID=bo.BookID
join Person p on rh.PersonID=p.PersonID
where year(StartDate) > YEAR(GETDATE()) - 1
	or year(EndDate) > YEAR(GETDATE()) - 1
