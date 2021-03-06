USE LIBRARY_DB;
CREATE TABLE STAFF (
	StaffId INT NOT NULL,
    StaffName VARCHAR(255) NOT NULL,
    EmailAddress VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(40) NOT NULL,
    Address VARCHAR(512) NOT NULL,
    Job VARCHAR(72) NOT NULL,
    
    CONSTRAINT StaffPK PRIMARY KEY(StaffId)
);

CREATE TABLE USER(
	UserId INT NOT NULL,
    FullName VARCHAR(255) NOT NULL,
    Gender VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(19) NOT NULL,
    
    CONSTRAINT UserPK PRIMARY KEY(UserId)
);

CREATE TABLE BORROWED (
	BorrowedId INT NOT NULL,
    DateCollected DATE NOT NULL,
    Deadline DATE NOT NULL,
    UserId INT NOT NULL,
    StaffId INT NOT NULL,
    BookId INT NOT NULL,
    
    CONSTRAINT BorrowedPK PRIMARY KEY(BorrowedId),
    CONSTRAINT UserFK FOREIGN KEY(UserId) REFERENCES USER(UserId),
    CONSTRAINT StaffFK FOREIGN KEY(StaffId) REFERENCES STAFF(StaffId),
    CONSTRAINT BookFK FOREIGN KEY(BookId) REFERENCES BOOK(BookId)
);

CREATE TABLE BOOK(
	BookId INT NOT NULL,
    BookName VARCHAR(125) NOT NULL,
    BookAuthor VARCHAR(156) NOT NULL,
    
    CONSTRAINT BookPK PRIMARY KEY(BookId)
);