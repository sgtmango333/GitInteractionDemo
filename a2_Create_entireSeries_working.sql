

select btb.SeriesName, bo.Title
from BooksOwned bo
join Series s on bo.SeriesID=s.SeriesID
join BooksToBuy btb on s.SeriesName=btb.SeriesName


select *
from BooksOwned

select *
from BooksToBuy

select *
from Series
