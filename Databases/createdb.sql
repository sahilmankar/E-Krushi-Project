-- Active: 1694843913347@@127.0.0.1@3306@ekrushi

drop database ekrushi;

CREATE DATABASE ekrushi;

USE ekrushi;

CREATE TABLE
    roles(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name varchar(250)
    );

CREATE TABLE
    userroles(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        userid INT NOT NULL UNIQUE,
        roleid INT NOT NULL,
        CONSTRAINT fkroleid FOREIGN KEY(roleid) REFERENCES roles(id) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    categories(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        title varchar(255),
        image varchar(255)
    );

CREATE TABLE
    suppliers(
        id INT NOT NULL AUTO_iNCREMENT PRIMARY KEY,
        corporateid INT NOT NULL UNIQUE,
        userid INT NOT NULL,
        CONSTRAINT fk_supplieruser FOREIGN KEY(userid) REFERENCES userroles(userid) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    products(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        title varchar(255),
        description VARCHAR(255),
        image varchar(255),
        categoryid INT NOT NULL,
        CONSTRAINT fkcategoryid FOREIGN KEY (categoryid) REFERENCES categories(id) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    productdetails(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        productid INT,
        unitprice DOUBLE,
        stockavailable INT,
        size VARCHAR(255),
        supplierid INT,
        CONSTRAINT fk_supplierid FOREIGN KEY (supplierid) REFERENCES suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE,
        CONSTRAINT fk_productid FOREIGN KEY (productid) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    productsratings( 
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        productid INT,
        customerid INT ,
        rating DOUBLE,
        CONSTRAINT fk_productid2 FOREIGN KEY (productid) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE,
        CONSTRAINT fk_customeruser FOREIGN KEY(customerid) REFERENCES userroles(userid) ON UPDATE CASCADE ON DELETE CASCADE,
        UNIQUE KEY (productid,customerid)
        );

CREATE TABLE
    orders(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        orderdate DATETIME NOT NULL,
        shippeddate DATETIME NOT NULL,
        customerid INT NOT NULL,
        CONSTRAINT fk_cust_id_11 FOREIGN KEY (customerid) REFERENCES userroles(userid) ON UPDATE CASCADE ON DELETE CASCADE,
        total DOUBLE,
        status ENUM(
            'approved',
            'initiated',
            'cancelled',
            'delivered',
            'inprogress'
        ) NOT NULL
    );

CREATE TABLE
    orderdetails(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        orderid INT NOT NULL,
        CONSTRAINT fkorder FOREIGN KEY (orderid) REFERENCES orders(id) ON UPDATE CASCADE ON DELETE CASCADE,
        productdetailsid INT NOT NULL,
        CONSTRAINT fkproduct FOREIGN KEY (productdetailsid) REFERENCES productdetails(id) ON UPDATE CASCADE ON DELETE CASCADE,
        quantity INT NOT NULL,
        discount DOUBLE DEFAULT 0
    );

CREATE TABLE
    carts(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        customerid INT NOT NULL,
        CONSTRAINT fk_1 FOREIGN KEY (customerid) REFERENCES userroles(userid) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    cartitems(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        cartid INT NOT NULL,
        CONSTRAINT fk02 FOREIGN KEY (cartid) REFERENCES carts(id) ON UPDATE CASCADE ON DELETE CASCADE,
        productdetailsid INT NOT NULL,
        CONSTRAINT fkproduct2 FOREIGN KEY (productdetailsid) REFERENCES productdetails(id) ON UPDATE CASCADE ON DELETE CASCADE,  
        quantity INT NOT NULL
    );

CREATE TABLE
    payments(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        date DATETIME NOT NULL,
        mode ENUM(
            'cash on delivery',
            'online payment'
        ),
        transactionid INT NOT NULL,
        orderid INT NOT NULL,
        Amount DOUBLE,
        CONSTRAINT fkorderid FOREIGN KEY (orderid) REFERENCES orders(id) ON UPDATE CASCADE ON DELETE CASCADE
    );


CREATE TABLE
    shippers(
        id INT NOT NULL AUTO_iNCREMENT PRIMARY KEY,
        corporateid INT NOT NULL UNIQUE,
        userid INT NOT NULL,
        CONSTRAINT fk_shipperuser FOREIGN KEY(userid) REFERENCES userroles(userid) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    feedbacks(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        description VARCHAR(255),
        customerid INT NOT NULL,
        CONSTRAINT fk_022 FOREIGN KEY (customerid) REFERENCES userroles(userid) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    questioncategories(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        category varchar(255)
    );

CREATE TABLE
    questions(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        description VARCHAR(255),
        categoryid INT NOT NULL,
        CONSTRAINT fkcategory1 FOREIGN KEY (categoryid) REFERENCES questioncategories(id) ON DELETE CASCADE ON UPDATE CASCADE
    );


CREATE TABLE
    answers(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        description VARCHAR(255),
        questionid INT NOT NULL,
        CONSTRAINT fkcategory12 FOREIGN KEY (questionid) REFERENCES questions(id) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    subjectmatterexperts(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        expertise VARCHAR(40),
        userid INT NOT NULL UNIQUE,
        CONSTRAINT fk_smeuser FOREIGN KEY (userid) REFERENCES userroles(userid) ON UPDATE CASCADE ON DELETE CASCADE
 );


CREATE TABLE
    smeanswers(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        answerid INT NOT NULL,
        CONSTRAINT fkuser21 FOREIGN KEY (answerid) REFERENCES answers(id) ON UPDATE CASCADE ON DELETE CASCADE,
        answerdate datetime not null,
        smeid INT NOT NULL,
        CONSTRAINT fkuser22 FOREIGN KEY (smeid) REFERENCES subjectmatterexperts(id)
    );

CREATE TABLE
    customerquestions(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        questionid INT NOT NULL,
        CONSTRAINT fkques FOREIGN KEY(questionid) REFERENCES questions(id) ON UPDATE CASCADE ON DELETE CASCADE,
        customerid INT NOT NULL,
        CONSTRAINT fk_cust_11 FOREIGN KEY (customerid) REFERENCES userroles(userid) ON UPDATE CASCADE ON DELETE CASCADE,
        questiondate datetime not null
    );
