
select distinct a.AuthorID, a.AuthorName, b.Title, s.seriesname, SeriesNum, b.BookID, b.SeriesID
from author a
join booksowned b on a.AuthorID=b.AuthorID
join Series s on b.SeriesID=s.SeriesID
join BooksToBuy bb on s.SeriesName=bb.SeriesName
order by a.AuthorName, SeriesName, b.SeriesNum


--can't get the seriesNum from two different tables to display in the same column
--don't want to join on them bc there are repeat values for different records
