use [cs598_Assignment3Final]

IF OBJECT_ID('customer') IS NOT NULL
    DROP TABLE customer;
GO

CREATE TABLE customer (
    customerId int IDENTITY(1,1),
    customerName varchar(255),
	phone varchar(255) NOT NULL,
	street varchar (255),
	city varchar(255)
    PRIMARY KEY (customerId),
	CONSTRAINT UC_customer UNIQUE (customerName, phone )
);

Insert into [dbo].[customer]
values
('Baggins, Frodo', '202-555-0109', '7405 Oak Meadow Road', 'Elk Grove Village'),
('Gamgee, Samwise', '701-555-0109', '9372 Stillwater Ave. ', 'Champaign'),
('Took, Peregrin', '202-555-0182', '24 West Beechwood Drive ', 'Urbana'),
('Brandybuck, Meriadoc', '202-555-0147', '8 Hall Lane ', 'Savoy'),
('Wormtongue, Grima', '701-555-0136', '628 Center Rd. ', 'Zionsville'),
('Bolger, Fredegar', '202-555-0179', '9827 Morris Ave. ', 'Bloomington'),
('Goatleaf, Harry', '701-555-0137', '6 Blue Spring Court ', 'Des Plaines'),
('Willow, Old Man', '701-555-0192', '7186 Wintergreen St. ', 'Champaign'),
('Angmar, Witch-King of', '701-555-0190', '12 Rockaway Street ', 'Urbana'),
('Gandalf', '701-555-0172', '7390 E. Glenridge Rd. ', 'Rantoul')
