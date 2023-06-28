
use MangoJRLibrary
GO

if (select object_id('usp_LocationByGenre')) IS NULL
	exec sp_executesql N'CREATE PROC usp_LocationByGenre AS SELECT 1 ''BETA'''
GO

alter proc usp_LocationByGenre (
@genreid int )
as

select g.GenreID, GenreName, CaseLocation, ShelfLocation
from PhysicalLocation phys
join Book_Genre bg on phys.BookID=bg.BookID
join Genre g on bg.GenreID=g.GenreID
where g.GenreID=@genreid
