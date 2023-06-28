
use MangoJRLibrary
GO

if (select object_id('usp_BooksByGenre')) IS NULL
	exec sp_executesql N'CREATE PROC usp_BooksByGenre AS SELECT 1 ''DELTA'''
GO

alter proc usp_BooksByGenre (
@genreid int )
as

select bo.BookID, bo.Title, g.GenreID, GenreName
from Genre g
join Book_Genre bg on g.GenreID=bg.GenreID
join BooksOwned bo on bg.BookID=bo.BookID
where g.GenreID=@genreid
order by GenreID
