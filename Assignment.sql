CREATE DATABASE Assignment
use Assignment
DROP Database Assignment
CREATE TABLE Menu (
	menu_id INT PRIMARY KEY,
	menu_name NVARCHAR(100)
);

CREATE TABLE Menu_Items (
  item_id INT PRIMARY KEY,
  menu_id INT,
  item_name NVARCHAR(255),
  item_type NVARCHAR(50),
  price DECIMAL(10, 2),
  FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

CREATE TABLE Staff (
  staff_id INT PRIMARY KEY,
  staff_fullname NVARCHAR(255),
  address NVARCHAR(200),
  gender NVARCHAR(50) CHECK (gender IN ('M', 'F')),
  Phone_number NVARCHAR(50),
  salary DECIMAL(10, 2)
);


CREATE TABLE Customers (
  customer_id Varchar(50) PRIMARY KEY,
  customer_fullname NVARCHAR(255),
  customer_phone NVARCHAR(50)
);

CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id varchar(50),
  staff_id INT,
  quantity INT,
  order_time DATETIME,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);


CREATE TABLE OrderDetails (
  order_detail_id INT PRIMARY KEY,
  order_id INT,
  item_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (item_id) REFERENCES Menu_Items(item_id)
);

CREATE TABLE Invoices (
   invoice_id  INT IDENTITY(1,1) NOT NULL,
  order_id INT,
  total_amount DECIMAL(10, 2),
  payment_status NVARCHAR(50),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);



INSERT INTO Menu (menu_id, menu_name)
VALUES 
('01', 'Food'),
('02','Drink')

---Insert food
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (100, 01, N'Phở bò', 'Food', 50.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (101, 01, N'Cơm rang dưa bò', 'Food', 40.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (102, 01, N'Cơm rang muối', 'Food', 40.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (103, 01, N'Bánh mì kẹp trứng', 'Food', 10.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (104, 01, N'Cá viên chiên', 'Food', 20.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (105, 01, N'Salat phô mai', 'Food', 30.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (106, 01, N'Gà ủ muối', 'Food', 100.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (107, 01, N'Bún đậu', 'Food', 35.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (108, 01, N'Snake', 'Food', 15.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (109, 01, N'Bánh Bao', 'Food', 15.0);

--Insert drink
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (200, 02, N'Coca', 'Drink', 10.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (201, 02, N'Pepsi', 'Drink', 10.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (202, 02, N'Bạc xỉu', 'Drink', 15.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (203, 02, N'Trà Sữa', 'Drink', 30.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (204, 02, N'Nước ép', 'Drink', 20.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (205, 02, N'Cà phê', 'Drink', 15.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (206, 02, N'Caramen', 'Drink', 20.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (207, 02, N'Matcha', 'Drink', 10.0);
Insert into Menu_Items( Item_id, menu_id, item_name, item_type,price)
VALUES (208, 02, N'Trà Ô Long', 'Drink', 10.0);

--Insert Staff
Insert into Staff( staff_id, staff_fullname,address, gender,Phone_number,salary)
values(8801, N'Đỗ Hoàng Long', N'Hà Nội','M', '097008001', '5000')
Insert into Staff( staff_id, staff_fullname,address, gender,Phone_number,salary)
values(8802, N'Phạm Văn Việt', N'Hà Nội','M', '097008002', '6000')
Insert into Staff( staff_id, staff_fullname,address, gender,Phone_number,salary)
values(8803, N'Trần Thanh Hải', N'Quảng Ninh','M', '097008003', '5000')
Insert into Staff( staff_id, staff_fullname,address, gender,Phone_number,salary)
values(8804, N'Vũ Thanh Bình', N'Bắc Ninh','M', '097008004', '7000')
Insert into Staff( staff_id, staff_fullname,address, gender,Phone_number,salary)
values(8805, N'Trần Cao Thắng', 'TP.HCM','M', '097008005', '8000')
Insert into Staff( staff_id, staff_fullname,address, gender,Phone_number,salary)
values(8806, N'Phan Trường Hiếu', 'TP.HCM','M', '097008006', '6000')
Insert into Staff( staff_id, staff_fullname,address, gender,Phone_number,salary)
values(8807, N'Nguyễn Lan Anh', N'Cà Mau','F', '097008007', '4000')
Insert into Staff( staff_id, staff_fullname,address, gender,Phone_number,salary)
values(8808, N'Ngô Diệp Anh', N'Bắc Ninh','F', '09700808', '9000')
Insert into Staff( staff_id, staff_fullname,address, gender,Phone_number,salary)
values(8809, N'Vũ Thúy Lan', N'Bắc Ninh','F', '09700809', '7000')


--Insert Customers
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE131',N'Lỗ Trí Thâm', '087612331')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE132',N'Lâm Xung', '087612332')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE133',N'Tống Giang', '087612333')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE134',N'Tiểu Long N', '087612334')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE135',N'Dương Quá', '087612335')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE136',N'Doãn Chí Bình', '087612336')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE137',N'Trương Vô Kị', '087612337')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE138',N'Quan Vân Trường', '087612338')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE139',N'Lý Tiểu Long', '087612339')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE140',N'Lưu Bị', '087612340')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE141',N'Tào Tháo', '087612341')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE142',N'Triệu Tử Long', '087612342')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE143',N'Trương Phi', '087612343')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE144',N'Điêu Thuyền', '087612344')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE145',N'FLorentino', '087612345')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE146',N'Zuka', '087612346')
Insert into Customers(customer_id,customer_fullname,customer_phone)
values('HE147',N'Đường Tank', '087612347')


-- Insert Orders
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1001, 'HE131', 8801, 2, '2023-01-02 07:45:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1011, 'HE141', 8806, 1, '2023-01-02 07:45:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1002, 'HE132', 8801, 3, '2023-01-01 11:00:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1003, 'HE133', 8802, 1, '2023-01-02 10:30:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1004, 'HE134', 8803, 4, '2023-01-02 07:15:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1005, 'HE135', 8803, 1, '2023-01-02 14:12:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1006, 'HE137', 8804, 2, '2023-01-02 15:17:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1007, 'HE136', 8805, 2, '2023-01-01 13:31:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1008, 'HE138', 8805, 4, '2023-01-02 14:56:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1009, 'HE139', 8807, 1, '2023-01-02 09:30:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1010, 'HE140', 8805, 1, '2023-01-03 09:30:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1012, 'HE142', 8807, 2, '2023-01-01 08:37:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1013, 'HE143', 8806, 4, '2023-01-03 11:27:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1014, 'HE144', 8801, 3, '2023-01-02 11:21:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1015, 'HE145', 8802, 2, '2023-01-01 13:20:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1016, 'HE146', 8803, 3, '2023-01-03 13:20:00');
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1017, 'HE147', 8804, 2, '2023-01-03 17:20:00');

-- Insert Orderdetails
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (00, 1001, 203, 2);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (01, 1002, 203, 3);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (02, 1003, 205, 1);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (03, 1004, 204, 4);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (04, 1005, 201, 1);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (05, 1006, 204, 2);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (06, 1007, 204, 2);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (07, 1008, 207, 4);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (08, 1009, 206, 1);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (09, 1010, 206, 1);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (010, 1011, 205, 1);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (011, 1012, 203, 2);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (012, 1013, 203, 4);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (013, 1014, 205, 3);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (014, 1015, 205, 2);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (015, 1016, 205, 3);
INSERT INTO OrderDetails (order_detail_id, order_id, item_id, quantity)
VALUES (016, 1017, 201, 2);

-- Insert Invoices
INSERT INTO Invoices (order_id, total_amount, payment_status)
SELECT o.order_id, SUM(od.quantity * mi.price), 'Paid'
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Menu_Items mi ON od.item_id = mi.item_id
GROUP BY o.order_id;


UPDATE Invoices 
SET payment_status = 'Unpaid'
WHERE order_id IN (1006, 1013, 1016);


SELECT * FROM Menu
SELECT * FROM Menu_Items
SELECT * FROM Orders
SELECT * FROM OrderDetails
SELECT * FROM Customers
SELECT * FROM Staff
SELECT * FROM Invoices

-- Các câu truy vấn cùng câu trả lời SQL tương ứng
-- 1. Lấy tổng số lượng của từng mục menu được đặt hàng:
SELECT mi.item_id, mi.item_name, SUM(od.quantity) AS total_quantity
FROM OrderDetails od
JOIN Menu_Items mi ON od.item_id = mi.item_id
GROUP BY mi.item_id, mi.item_name;
-- 2. Lấy tổng số lượng của từng mục menu được đặt hàng
SELECT mi.item_id, mi.item_name, SUM(od.quantity) AS total_quantity
FROM OrderDetails od
JOIN Menu_Items mi ON od.item_id = mi.item_id
GROUP BY mi.item_id, mi.item_name;

-- 3. Truy xuất tất cả các đơn đặt hàng với các chi tiết khách hàng tương ứng của họ
SELECT o.order_id, o.customer_id, c.customer_fullname, c.customer_phone
FROM Orders o
JOIN Customers c 
ON o.customer_id = c.customer_id;

-- 4. Truy xuất các khách hàng đã đặt nhiều đơn hàng nhất
SELECT TOP 3 c.customer_id, c.customer_fullname, c.customer_phone, SUM(o.quantity) AS total_orders
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_fullname, c.customer_phone
ORDER BY total_orders DESC

-- 5. Quản lý các món ăn có tại căng tin 
select * from Menu_Items

-- 6. Quản lý order của học viên và nhân viên, bao gồm số lượng và giá cả món ăn.
select O.staff_id, s.staff_fullname, C.customer_id, C.customer_fullname, O.quantity, Inc.total_amount 
from Orders O join Customers c on c.customer_id = o.customer_id
join Invoices inc on O.order_id = inc.order_id
join staff S on S.staff_id = o.staff_id

--7. Quản lý thông tin về nhân viên làm việc tại căng tin bao gồm mã số nhân viên, họ tên, địa chỉ email, số điện thoại và mức lương.
Select* from Staff

--8. Quản lý đơn hàng đã giao, gồm thông tin về khách hàng, nhân viên giao hàng, thời gian giao hàng.

select s.staff_id, s.staff_fullname, c.customer_id, c.customer_fullname, o.order_time
from staff s join Orders o on s.staff_id = o.staff_id
join Customers c on c.customer_id = o.customer_id

--9. Tính doanh thu căn tin từ ngày ... đến ngày...
select sum(total_amount) as 'Tổng doanh số' from Invoices inc join Orders o on o.order_id = inc.order_id
WHERE order_time between '2023-01-01' and '2023-01-03'

--10. Cung cấp các báo cáo thống kê về số món đã bán, số món đã giao, doanh thu theo ngày, tuần, tháng.
select m.item_name, od.quantity as 'Total Quantity',O.order_time
from Menu_Items m join OrderDetails od on m.item_id = od.item_id
join orders o on od.order_id = o.order_id


-- 3.Các trigger để cài đặt các ràng buộc phức tạp

-- 1. Tạo 1 trigger insert vào bảng staff
CREATE TRIGGER insert_staff
ON Staff
AFTER INSERT
AS
BEGIN 
	SELECT i.staff_id, i.staff_fullname, i.address, i.gender, i.Phone_number, i.salary
	FROM inserted i
END;

-- test
INSERT INTO Staff (staff_id, staff_fullname, address, gender, Phone_number, salary)
VALUES (8810,'Long Nón Lá', 'America','M',097008888,9000.00)
Select * from Staff

-- 2. Tạo 1 trigger insert vào bảng customer
CREATE TRIGGER insert_customer
ON Customers
AFTER INSERT
AS 
BEGIN
	SELECT i.customer_id, i.customer_fullname, i.customer_phone
	FROM inserted i
END;

-- Test
INSERT INTO Customers(customer_id, customer_fullname, customer_phone)
VALUES('HE148', N'Diệp Vấn', 0989788989);
SELECT  * from Customers


-- 3. Tạo 1 trigger delete 1 khách hàng
CREATE TRIGGER delete_khachhang
ON Customers
AFTER DELETE
AS 
BEGIN 
	SELECT d.customer_id, d.customer_fullname, d.customer_phone
	FROM deleted d
END;

-- test
DELETE FROM Customers WHERE customer_id = 'HE148';
select * from Customers

-- 4. Trigger  cập nhật số lượng tổng cộng của một đơn hàng trong bảng "order" sau khi có một chi tiết đơn hàng được thêm vào bảng orderdetail 

CREATE TRIGGER UpdateTotalQuantity_Insert
ON OrderDetails
AFTER INSERT
AS
BEGIN
  UPDATE Orders
  SET quantity = (SELECT SUM(quantity) FROM OrderDetails WHERE order_id = inserted.order_id)
  FROM Orders
  INNER JOIN inserted ON Orders.order_id = inserted.order_id;
END;

-- test
INSERT INTO Orders (order_id, quantity) VALUES (10012, 0);

INSERT INTO OrderDetails (order_detail_id, order_id, quantity) 
VALUES (100, 10012, 5)

select * from Orders
select * from OrderDetails

-- 5. tạo 1 Trigger để tự động thêm một hóa đơn mới vào bảng "Invoices" sau khi có một đơn hàng mới được thêm vào bảng oder
CREATE TRIGGER AddInvoice
ON Orders
AFTER INSERT
AS
BEGIN
  DECLARE @order_id INT;
  DECLARE @total_amount DECIMAL(10, 2);
  
  -- Lấy thông tin từ hàng được chèn mới nhất
  SET @order_id = (SELECT order_id FROM inserted);
  SET @total_amount = (SELECT SUM(od.quantity * mi.price)
                       FROM OrderDetails od
                       JOIN Menu_Items mi ON od.item_id = mi.item_id
                       WHERE od.order_id = @order_id);
  
  -- Thêm hóa đơn mới vào bảng Invoices
  INSERT INTO Invoices (order_id, total_amount, payment_status)
  VALUES (@order_id, @total_amount, 'Unpaid');
END;

-- test 
-- INSERT vào bảng Orders
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (1018, 'HE147', 8804, 3, '2023-01-02 20:13:00.000');

-- Kiểm tra xem hóa đơn có được thêm vào bảng Invoices hay không
SELECT * FROM Invoices WHERE order_id = 1018;

select * from Orders
select * from Invoices
select * from Customers
select * from Staff


-- 6. Tạo trigger cập nhật thời gian của các đơn hàng có order_id tương ứng với các bản ghi mới chèn thành thời gian hiện tại. 
CREATE TRIGGER UpdateOrderTimestamp
ON Orders
AFTER INSERT
AS
BEGIN
  -- Cập nhật thời gian của đơn hàng mới thành thời gian hiện tại
  UPDATE Orders
  SET order_time = GETDATE()
  WHERE order_id IN (SELECT order_id FROM inserted);
END;

-- test 
INSERT INTO Orders (order_id, customer_id, staff_id, quantity, order_time)
VALUES (2022, 'HE131', 8801, 5, '2023-07-17 10:30:00.000');

SELECT order_id, order_time FROM Orders WHERE order_id = 2022;


-- Các thủ tục hàm 
-- 1. Tạo procedure lấy thông tin khách hàng theo cus_id
CREATE PROCEDURE GetCustomerInfo
    @customer_id VARCHAR(50)
AS
BEGIN
    SELECT *
    FROM Customers
    WHERE customer_id = @customer_id;
END;

-- test
select * from Customers
EXEC GetCustomerInfo HE131;


-- 2. Tạo procedure để lấy thông tin chi tiết của một đơn hàng dựa trên order_id:
CREATE PROCEDURE GetOrderDetails
  @order_id INT
AS
BEGIN
  SELECT od.order_detail_id, mi.item_name, od.quantity, mi.price
  FROM OrderDetails od
  INNER JOIN Menu_Items mi ON od.item_id = mi.item_id
  WHERE od.order_id = @order_id;
END

-- test
select * from Orders
EXEC GetOrderDetails 1001

-- 3. tạo procedure để lấy danh sách tất cả các đơn hàng của một khách hàng dựa trên customer_id
CREATE PROCEDURE GetCustomerOrders
  @customer_id VARCHAR(50)
AS
BEGIN
  SELECT o.order_id, o.order_time, od.quantity, mi.item_name, mi.price
  FROM Orders o
  INNER JOIN OrderDetails od ON o.order_id = od.order_id
  INNER JOIN Menu_Items mi ON od.item_id = mi.item_id
  WHERE o.customer_id = @customer_id;
END

-- test
select * from Customers
EXEC GetCustomerOrders HE131

-- 4. Tạo procedure để tính tổng doanh thu từ các đơn hàng đã được thanh toán

CREATE PROCEDURE CalculateTotalRevenue
AS
BEGIN
  SELECT SUM(i.total_amount) AS total_revenue
  FROM Invoices i
  WHERE i.payment_status = 'Paid';
END

-- test
EXEC CalculateTotalRevenue;


-- 5. Procedure để cập nhật trạng thái thanh toán của một đơn hàng dựa trên order_id

CREATE PROCEDURE UpdatePaymentStatus
  @order_id INT,
  @payment_status NVARCHAR(50)
AS
BEGIN
  UPDATE Invoices
  SET payment_status = @payment_status
  WHERE order_id = @order_id;
END

-- test
EXEC UpdatePaymentStatus @order_id = 1001, @payment_status = 'Paid';
select * from Invoices

-- 6. 
CREATE PROCEDURE GetMenuItemsByType
  @menu_type NVARCHAR(50)
AS
BEGIN
  SELECT item_id, item_name, item_type, price
  FROM Menu_Items
  WHERE item_type = @menu_type;
END

-- test
EXEC GetMenuItemsByType @menu_type = 'Food';

-- Function
-- 1. Hàm function để tính tổng giá trị đơn hàng dựa trên order_id

CREATE FUNCTION CalculateOrderTotal
  (@order_id INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
  DECLARE @total DECIMAL(10, 2);

  SELECT @total = SUM(mi.price * od.quantity)
  FROM OrderDetails od
  INNER JOIN Menu_Items mi ON od.item_id = mi.item_id
  WHERE od.order_id = @order_id;

  RETURN @total;
END;

-- test
SELECT dbo.CalculateOrderTotal(1001) AS order_total;


-- 2. Hàm function để lấy số lượng đơn hàng của một khách hàng dựa trên customer_id
CREATE FUNCTION GetCustomerOrderCount
  (@customer_id VARCHAR(50))
RETURNS INT
AS
BEGIN
  DECLARE @count INT;

  SELECT @count = COUNT(*)
  FROM Orders
  WHERE customer_id = @customer_id;

  RETURN @count;
END;
-- test
SELECT dbo.GetCustomerOrderCount('HE131') AS order_count;


-- 3. Hàm function để kiểm tra trạng thái thanh toán của một đơn hàng dựa trên order_id
CREATE FUNCTION GetPaymentStatus
  (@order_id INT)
RETURNS NVARCHAR(50)
AS
BEGIN
  DECLARE @payment_status NVARCHAR(50);

  SELECT @payment_status = payment_status
  FROM Invoices
  WHERE order_id = @order_id;

  RETURN @payment_status;
END;

-- test 
SELECT dbo.GetPaymentStatus(1001) AS payment_status;










