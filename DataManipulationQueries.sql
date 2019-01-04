/* 

Group Name: Group 6

Project : Library Mangement System Database.

Date: 8/10/18.

Description: These are the queries that your website uses to let your users interact with data. Thus SELECT, INSERT, UPDATE and DELETE queries.
 

 /* ? here is the user input provided. */
  
 
/* Select queries */
SELECT id , title , author , publisher , publishdate , ISBN from books
SELECT id, title , author , publisher , publishdate , ISBN from books WHERE id =[userInput];
SELECT * from bookdetails;
SELECT id, title , author , publisher , ISBN ,quantity FROM books  b INNER JOIN bookdetails bd ON b.id = bd.book_id;
SELECT * from borrowing;
SELECT * from borrowing WHERE id = ?;
SELECT p.id, firstname , lastname , title , date_checked ,date_returned FROM patrons  p INNER JOIN borrowing bg ON p.id = bg.patron_id INNER JOIN books b ON b.id = bg.book_id ;
SELECT id , firstname, lastname , phonenumber from patrons;
SELECT id, firstname, lastname , phonenumber from patrons WHERE id = ?
SELECT id , vendorname from vendor

/*Filter books using books title.*/
SELECT id, title , author , publisher , ISBN FROM books WHERE books.title LIKE  [userInput];
SELECT id, title , author , publisher , ISBN , quantity FROM books b INNER JOIN bookdetails bd ON b.id = bd.book_id WHERE b.title LIKE [userInput];
SELECT id , row , shelf from location
/*Filter patrons using patron */
SELECT p.id, firstname , lastname , title , date_checked ,date_returned FROM patrons  p INNER JOIN borrowing bg ON p.id = bg.patron_id INNER JOIN books b ON b.id = bg.book_id WHERE p.firstname LIKE [userInput];
 
/*INSERT Queries*/ 
 
/* Adding a new book */
INSERT INTO books (title, author, publisher, publishdate, ISBN) VALUES ([titleInput], [authorInput], [publisherInput], [publishdateInput], [ISBNInput]);
--is a new loc necessary, or are we assuming all of the locations are prepopulated, may be empty of books
--INSERT INTO location ([rowInput], [shelfInput]);


/*Insert in bookdetails*/
INSERT INTO bookdetails (book_id, loc_id, quantity, vendor_id) VALUES ([book_idInput]), [loc_idInput], [quantityInput], [vendor_idInput]);


	
/* Adding a new patron */
INSERT INTO patrons (firstname, lastname, phonenumber) VALUES ([firstnameInput], [lastnameInput], [phonenumberInput]);

/* Adding a new vendor */
INSERT INTO vendor (vendorname) VALUES ([vendorNameInput]);

/* A Patron Borrowing a book */
INSERT INTO borrowing (book_id, patron_id, date_checked, date_returned) VALUES ([book_idInput], [patron_idInput], [date_checkedInput], [date_returnedInput]);

/*Adding a new location.*/
INSERT INTO location (row , shelf) VALUES (?, ?);

/*UPDATE Query*/
Update books SET title=?, author=?, publisher=?, publishdate=?, ISBN = ? WHERE id=?  /* ? is the user Input provided.*/	
UPDATE borrowing SET book_id=?, patron_id=?, date_checked=?, date_returned=? WHERE id=?
UPDATE patrons SET firstname=?, lastname=?, phonenumber=? WHERE id=?


/*DELETE Queries*/

/* Deleting a book from the library */
DELETE FROM books WHERE id =[userInput];
DELETE FROM borrowing WHERE id = ?;
DELETE FROM patrons WHERE id = ?;

