
-- Create the OrderItems table
CREATE TABLE OrderItems (
    OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert some sample data
INSERT INTO Customers (FirstName, LastName, Email, Phone) VALUES
('John', 'Doe', 'john.doe@email.com', '123-456-7890'),
('Jane', 'Smith', 'jane.smith@email.com', '987-654-3210');

INSERT INTO Products (ProductName, Price) VALUES
('Espresso', 2.50),
('Cappuccino', 3.50),
('Latte', 4.00);

INSERT INTO Orders (CustomerID) VALUES (1), (2);

INSERT INTO OrderItems (OrderID, ProductID, Quantity) VALUES
(1, 1, 2), -- John orders 2 Espressos
(1, 3, 1), -- John orders 1 Latte
(2, 2, 3); -- Jane orders 3 Cappuccinos