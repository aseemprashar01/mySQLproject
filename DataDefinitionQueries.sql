
/* 

Group Name: Group 6

Project : Library Mangement System Database.

Date: 8/13/18.

Description: The following document creates tables for library database and inserts data into the library database tables.


 */



/* Creates BOOKS TABLE */

CREATE TABLE books 
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL UNIQUE,
    author VARCHAR(100) NOT NULL,
    publisher VARCHAR(100) NOT NULL,
    publishdate DATE NOT NULL,
    ISBN VARCHAR(20) NOT NULL
 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Creates Patron Table */ 

CREATE TABLE patrons
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    phonenumber VARCHAR(15) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Creates Borrowing Table */

CREATE TABLE borrowing
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT NOT NULL,
    patron_id INT NOT NULL,
    date_checked DATE NOT NULL,
    date_returned DATE NOT NULL,
  	FOREIGN KEY(book_id) REFERENCES books(id),
  	FOREIGN KEY(patron_id) REFERENCES patrons(id)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/* Creates Vendor Table */

CREATE TABLE vendor
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    vendorname VARCHAR(100) NOT NULL UNIQUE
     
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/* Creates Location Table */

CREATE TABLE location 
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    row INT NOT NULL,
    shelf  INT NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

/* Creates BookDetails Table */

CREATE TABLE bookdetails
(                                    
   book_id INT NOT NULL,
   loc_id  INT NOT NULL,
   quantity INT NOT NULL,
   vendor_id INT NOT NULL,
   FOREIGN KEY(book_id) REFERENCES books(id),
   FOREIGN KEY(loc_id) REFERENCES location(id),
   FOREIGN KEY(vendor_id) REFERENCES vendor(id)

  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/* Insert Statements.

 Inserting into books table. */

INSERT INTO books (title,author, publisher, publishdate, ISBN) VALUES  ('XYZ','ABC','Modern', '2011-02-14', '156-256-3546'),('In the Party and the Name','Andy Triggs','HarperCollins','2014-07-17','323-205-9724'),
('Fallen Night','Elfreda Brassington','HarperCollins','2002-12-18','310-601-3855'),('Cup and Captain','Joandra Forrest','Macmillan','2010-09-20','262-354-0296'),('The Fox','Heidi Goode','Penguin Random House','2015-11-04','617-375-7435'),
('Mirror Silent North','Perlie Shepherd','Oxford Press','2010-01-17','310-279-1292'),('Blade Haunt','Alban Salvage','Macmillan','2016-04-18','315-245-8712'),('People Dome','Deon Merritt','Macmillan','2012-04-18','229-274-7389'),
('Swords and Stars ','Lorene Bean','Oxford Press','2008-05-26','281-523-5223'),('The Curse Above the Treasures','Leon Panetta','Oxford Press','2013-03-14','765-886-5780');


/* Inserting into patron table. */

INSERT INTO patrons (firstname, lastname , phonenumber) VALUES  ('Arvind', 'Kejriwal', '999-899-7854'),('Jose','Smith','856-352-2395'),('Stephen','Fleming','228-433-6978'),('Ravi','Paul','660-358-7539'),
('Hoshna','Montes','406-687-4031'),('Brandi','Storm','805-456-6724'),('Steve','Carter','650-522-3075'),('Will','Smith','231-286-1015'),('Nassir','Ali','615-317-5167'),('Feng','Chi','231-944-4909');

/* Inserting into borrowing table. */

INSERT INTO borrowing (book_id , patron_id , date_checked, date_returned ) VALUES  (1,1,'2018-01-02','2018-01-12'),(1,2,'2018-02-26','2018-03-14'),(3,5,'2018-03-04','2018-03-10'),(8,4,'2018-03-10','2018-03-25'),
(5,6,'2018-03-06','2018-03-28'),(4,9,'2018-03-20','2018-04-05'),(4,5,'2018-04-02','2018-04-12'),(9,1,'2018-05-05','2018-05-08'),(3,2,'2018-05-06','2018-05-18');

/* Inserting into location table. */

INSERT INTO location ( row , shelf ) VALUES  (1,2),(1,4),(1,1),(1,3),(2,1),(2,2),(2,3),(3,1),(2,4),(3,1);


/* Inserting into vendor table. */

INSERT INTO vendor ( vendorname ) VALUES  ('Modern books'),('Creative Press'),('Pacific Legal'),('John Miller'),('Gecko Artz Inc'),('Pathways'),('Kreative Arts'),('Modest Publisher'),('Divine books'),('John Doe');

/* Inserting into bookdetails table. */

INSERT INTO bookdetails ( book_id , loc_id , quantity, vendor_id) VALUES  (1,1,10,5),(2,2,5,3),(3,5,6,1),(4,3,3,2),(5,4,8,8),(6,8,4,9),(7,6,3,4),(8,9,1,7),(9,7,3,10),(10,10,4,6);






