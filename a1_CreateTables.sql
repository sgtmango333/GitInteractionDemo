use MangoJRLibrary
GO

create table BooksOwned(
	BookID int identity NOT NULL Primary Key,
	Title nvarchar(255) NOT NULL,
	AuthorID int NOT NULL,
	PageCnt int,
	BookType nvarchar(255),
	CoverType nvarchar(255),	
	SeriesID int,
	SeriesNum int,
	CopyrightDate int,
	PublisherID int,
	Edition int,
	UPC nvarchar(25),
	DDC int,
	OwnedStatus bit
) 

create table BooksToBuy(
	Title nvarchar(255) NOT NULL,
	AuthorName nvarchar(255) NOT NULL,
	BookType nvarchar(255),
	CoverType nvarchar(255),	
	SeriesName nvarchar(255),
	SeriesNum int,
	OwnedStatus bit
)

create table Author(
	AuthorID int identity NOT NULL Primary Key,
	AuthorName nvarchar(255) NOT NULL,
	Website nvarchar(255) null
)

create table Book_Genre(
	bgID int identity NOT NULL Primary Key,
	BookID int NOT NULL,
	GenreID int NOT NULL
)

create table Genre(
	GenreID int identity NOT NULL Primary Key,
	GenreName nvarchar(255) NOT NULL,
	GenreDescription nvarchar(max)
)

create table Series(
	SeriesID int identity NOT NULL Primary Key,
	SeriesName nvarchar(255) NOT NULL,
	SeriesTotalNum int
) 

create table Publisher(
	PublisherID int identity NOT NULL Primary Key,
	PublisherName nvarchar(255) NOT NULL,
	PublisherAddress nvarchar(255),
	PublisherCity nvarchar(255),
	PublisherState nvarchar(255),
	PublisherCountry nvarchar(255)
)

create table Person(
	PersonID int identity NOT NULL Primary Key,
	FirstName nvarchar(255) NOT NULL,
	LastName nvarchar(255) NOT NULL,
	DateofBirth date NOT NULL,
	Age int NOT NULL,
	Interest1 nvarchar(255),
	Interest2 nvarchar(255),
	Interest3 nvarchar(255)
)

create table PhysicalLocation(
	BookID int,
	CaseLocation int,
	ShelfLocation int
)

create table PurchaseHistory(
	PurchaseID int identity NOT NULL Primary Key,
	PersonID int,
	BookID int NOT NULL,
	PurchaseDate date,
	PurchaseLocation nvarchar(255),
	PurchasePrice money
)

create table ReadHistory(
	BookID int NOT NULL,
	PersonID int NOT NULL,
	StartDate date,
	EndDate date,
	ReviewScore int
)