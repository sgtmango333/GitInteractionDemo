
use MangoJRLibrary
GO

if (select object_id('usp_BooksByAuthor')) IS NULL
	exec sp_executesql N'CREATE PROC usp_BooksByAuthor AS SELECT 1 ''ECHO'''
GO

alter proc usp_BooksByAuthor (
@authorid int )
as

select a.AuthorID, AuthorName, b.Title, s.SeriesName, b.SeriesNum, b.BookID, b.SeriesID
from author a
join booksowned b on a.AuthorID=b.AuthorID
left join Series s on b.SeriesID=s.SeriesID
where a.AuthorID=@authorId
order by AuthorName, SeriesName, SeriesNum asc
