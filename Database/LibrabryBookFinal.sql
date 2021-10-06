GO
CREATE DATABASE LibraryBook;
GO
USE LibraryBook;

--Tao bang 
GO  
create table Roles
(
	RoleID int IDENTITY(1,1),
	RoleName varchar(50),
	primary key(RoleID)
)
GO
Create table Users (
	UserID int IDENTITY(1,1),
	RoleID int not null, 
	UserName varchar(50) not null,
	UserPassword varchar(30) not null,
	FullName nvarchar(100),
	Gender bit,
	Birthday date,
	UserAddress nvarchar(150) not null,
	PhoneNumber varchar(10) not null,
	primary key(UserID),
	foreign key (RoleID) references ROLES(RoleID)
)
GO
--Tao bang CONTACT
Create table Contact (
	C_id int IDENTITY(1,1) not null,
	C_Name nvarchar(100) not null,
	C_Email varchar(100) not null,
	C_Subject nvarchar(200) not null,
	C_Message ntext,
	UserID int not null,
	primary key(C_id),
	foreign key (UserID) references USERS(UserID)

)
Go 
create table Category (
    CategoryID int IDENTITY(1,1),
	CategoryName nvarchar(100),
	primary key(CategoryID)
)
create table Book (
    BookID int IDENTITY(1,1),
	CategoryID int not null,
	BookName nvarchar(100) not null,
	Quantity int not null,
	Sole int not null,
	BookPrice float not null,
	TotalBook int not null,
	BookStatus bit not null,
	primary key(BookID),
	foreign key(CategoryID) references CATEGORY(CategoryID)
)
GO
create table BookDetail (
    BookDetailID int IDENTITY(1,1),
	Author nvarchar(100) not null,
	Publisher nvarchar(150) not null,
	Reprint int not null,
	PageNumber int not null,
	BookDescription ntext not null,
	BookID int not null,
	primary key(BookDetailID),
	foreign key(BookID) references BOOK(BookID)
)
GO
CREATE TABLE Bill(
	BillID int IDENTITY(1,1),
	UserID int NOT NULL,
	CreateDate datetime NOT NULL,
	--1: Đã thanh toán/ 0: Chưa thanh toán
	StatusBill bit DEFAULT 0,
	--0: Chưa xác nhận/1: Đã xác nhận
	Confirm bit DEFAULT 0,
	PRIMARY KEY (BillID),
	CONSTRAINT FK_BillUser FOREIGN KEY (UserID) REFERENCES Users(UserID)
)
GO
CREATE TABLE BillBook (
	BillBookID int IDENTITY (1,1),
	Quantity int NOT NULL,
	BillID int NOT NULL,
	BookID int NOT NULL,
	PRIMARY KEY (BillBookID),
	CONSTRAINT FK_Bill FOREIGN KEY (BillID) REFERENCES Bill(BillID), 
	CONSTRAINT FK_Book FOREIGN KEY (BookID) REFERENCES Book(BookID)
)
GO
CREATE TABLE Cart (
	CartID int IDENTITY (1,1),
	Quantity int NOT NULL,
	BookID int NOT NULL,
	UserID int NOT NULL,
	--0: Không hiển thị/1: Hiển thị
	StatusCart bit DEFAULT 1,
	PRIMARY KEY (CartID),
	CONSTRAINT FK_UserCart FOREIGN KEY (UserID) REFERENCES Users(UserID), 
	CONSTRAINT FK_BookCart FOREIGN KEY (BookID) REFERENCES Book(BookID)
)

GO
--Thêm dữ liệu bảng ROLE
insert into ROLES(RoleName) values ('Admin')
insert into ROLES(RoleName) values ('User')
--Thêm dữ liệu bảng USERS
insert into USERS(roleID, UserName,UserPassword,FullName,Gender,Birthday,UserAddress,PhoneNumber) 
values (1,'Milen','123456', N'Nguyễn Thị Bảo Ngân', 1, '2000/04/26', N'156 Thái Phiên - TP.Huế - Tỉnh Thừa Thiên Huế', '0935580372')
insert into USERS(roleID, UserName,UserPassword,FullName,Gender,UserAddress,PhoneNumber) 
values (2,'HanhHa','456789', N'Hà Thị Mỹ Hạnh', 1, N'70 Ngũ Hành Sơn - TP.Đà Nẵng - Tỉnh Đà Nẵng', '0324567858')
insert into USERS(roleID, UserName,UserPassword,FullName,Gender,Birthday,UserAddress,PhoneNumber) 
values (1,'PhucDai','123456', N'Nguyễn Đình Phúc Đại', 0, '1990/01/04', N'02 Phan Hành Sơn - TP.Đà Nẵng - Tỉnh Đà Nẵng', '0334567821')
insert into USERS(roleID, UserName,UserPassword,Gender,Birthday,UserAddress,PhoneNumber) 
values (2,'VuTran','159357', 0, '2000/06/11', N'40 Tôn Đản - TP.Đà Nẵng - Tỉnh Đà Nẵng', '0886451247')
insert into USERS(roleID, UserName,UserPassword,FullName,Gender,Birthday,UserAddress,PhoneNumber) 
values (2,'ThiThuy','951753', N'Nguyễn Thị Thủy', 1, '2001/08/10', N'72 Thái Phiên - TP.Hồ Chí Minh', '0914587264')
insert into USERS(roleID, UserName,UserPassword,FullName,Gender,Birthday,UserAddress,PhoneNumber) 
values (2,'TrangTruong','123456', N'Trương Huyền Trang', 1, '1996/12/10', N'56 Đỗ Bá - TP.Đà Nẵng - Tỉnh Đà Nẵng', '0123457846')
insert into USERS(roleID, UserName,UserPassword,FullName,Gender,Birthday,UserAddress,PhoneNumber) 
values (1,'ThuyThanh','564789', N'Ngô Thị Thanh Thủy', 1, '1999/02/24', N'18 Phạm Nhữ Tăng - TP.Đà Nẵng - Tỉnh Đà Nẵng', '0395642154')
insert into USERS(roleID, UserName,UserPassword,Gender,UserAddress,PhoneNumber) 
values (2,'LenMi','123456', 1, N'156 Thái Phiên - TP.Huế - Tỉnh Thừa Thiên Huế', '0935580372')
insert into USERS(roleID, UserName,UserPassword,FullName,Gender,Birthday,UserAddress,PhoneNumber) 
values (2,'MinhHo','789456', N'Hồ Sĩ Tuấn Minh', 0, '2002/04/16', N'70 Hai Bà Trưng - TP.Hà Tĩnh - Tỉnh Hà Tĩnh', '0985642187')
insert into USERS(roleID, UserName,UserPassword,FullName,Gender,Birthday,UserAddress,PhoneNumber) 
values (2,'TuTran','111111', N'Trần Thiên Tú', 0, '1998/08/24', N'78 Nguyễn Huệ - TP.Hà Nội - Tỉnh Hà Nội', '0562348756')
insert into USERS(roleID, UserName,UserPassword,FullName,Gender,UserAddress,PhoneNumber) 
values (2,'ChauNguyen','222222', N'Nguyễn Thị Bảo Châu', 1, N'68 Thọ Quang - TP.Đà Nẵng- Tỉnh Đà Nẵng', '0836447215')
GO
--Thêm dữ liệu bảng CONTACT
insert into Contact(C_Name, C_Email, C_Subject, C_Message, userID) 
values (N'Nguyễn Thị Bảo Ngân', 'Milen@gmail.com', N'Giỏ hàng', N'Thêm sản phẩm vào giỏ hàng',1)
insert into Contact(C_Name, C_Email, C_Subject, C_Message, userID) 
values (N'Nguyễn Thị Bảo Châu', 'ABC@gmail.com', N'Danh Mục', N'Chọn theo giá',5)
GO
--Thêm dữ liệu bảng Category
insert into Category(CategoryName)
values
(N'Sách kỹ năng sống'),
(N'Sách văn học'),
(N'Sách Chính trị – pháp luật'),
(N'Sách Khoa học công nghệ – Kinh tế'),
(N'Sách Văn học nghệ thuật'),
(N'Sách Văn hóa xã hội – Lịch sử'),
(N'Sách Giáo trình'),
(N'Sách Truyện, tiểu thuyết'),
(N'Sách Tâm lý, tâm linh, tôn giáo'),
(N'Sách Sách thiếu nhi');
GO
--Thêm dữ liệu bảng Book
insert into Book(CategoryID, BookName, Quantity, Sole, BookPrice, TotalBook, BookStatus)
values
(1, N'Đàn Ông Sao Hỏa Đàn Bà Sao Kim',  100, 50, 188.000, 50, 1),
(1, N'Rèn Luyện Tư Duy Phản Biện',  100, 50, 99.000, 50, 1),
(2, N'Giết Con Chim Nhại',  100, 50, 120.000, 50, 1),
(2, N'Bố Già',  100, 50, 110.000, 50, 1),
(4, N'Nhà Đầu Tư Thông Minh',  100, 50, 199.000, 50, 1);
GO
--Thêm dữ liệu bảng BookDetail
insert into BookDetail (BookID, Author, Publisher, Reprint, PageNumber, BookDescription)
values
(1, 'John Gray', N'Nhà Xuất Bản Hồng Đức', 1, 488, N'Khi đàn ông yêu phụ nữ, nhưng theo định kỳ, anh ấy cần xa cách trước khi có thể gần gũi hơn. Còn với phụ nữ, lòng tự tôn của họ dâng lên và hạ xuống giống như một con sóng. Khi đến tận cùng, nó là sắp xếp lại cảm xúc. Đàn ông giống như dây cao su, đàn bà lại như những con sóng 101 cách để thấu hiểu và ghi được những điểm số cao trong mắt người khác giới.'),
(2, 'Albert Rutherford', N'Nhà Xuất Bản Phụ Nữ', 1, 204, N'Những người tư duy phản biện cũng biết rằng họ cần thu thập những ý tưởng và đức tin của mọi người. Tư duy phản biện không thể tự nhiên mà có. Những người khác có thể đưa ra những góc nhìn khác mà bạn có thể chưa bao giờ nghĩ tới, và họ có thể chỉ ra những lỗ hổng trong logic của bạn mà bạn đã hoàn toàn bỏ qua.'),
(3, 'Harper Lee', N'Nhà Xuất Bản Văn Học', 1, 419, N'Cho dù được kể dưới góc nhìn của một cô bé, cuốn sách Giết con chim nhại không né tránh bất kỳ vấn đề nào, gai góc hay lớn lao, sâu xa hay phức tạp: nạn phân biệt chủng tộc, những định kiến khắt khe, sự trọng nam khinh nữ… Góc nhìn trẻ thơ là một dấu ấn đậm nét và cũng là đặc sắc trong Giết con chim nhại. Trong sáng, hồn nhiên và đầy cảm xúc, những câu chuyện tưởng như chẳng có gì to tát gieo vào người đọc hạt mầm yêu thương.'),
(4, 'Mario Puzo', N'Nhà Xuất Bản Văn Học', 1, 642, N'Thế giới ngầm được phản ánh trong tiểu thuyết Bố Già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất chính hứa hẹn những món lợi kếch xù. Trong thế giới ấy, hình tượng Bố Già được tác giả dày công khắc họa đã trở thành bức chân dung bất hủ trong lòng người đọc.'),
(5, 'Albert Rutherford', N'Nhà Xuất Bản Thế Giới', 1, 644, N'Tác Phẩm Kinh Điển Về Tư Vấn Đầu Tư Là nhà tư vấn đầu tư vĩ đại nhất của thế kỷ 20, Benjamin Graham đã giảng dạy và truyền cảm hứng cho nhiều người trên khắp thế giới.');
GO
--Thêm dữ liệu bảng Bill
INSERT INTO Bill(UserID,CreateDate)
VALUES	(1,'2021-09-19 10:18:09'),
		(2,'2021-09-19 11:20:09'),
		(1,'2021-09-20 22:09:10'),
		(3,'2021-09-20 23:19:19'),
		(1,'2021-10-21 08:18:09')
--BillBook
INSERT INTO BillBook(BillID, BookID, Quantity)
VALUES	(1, 2, 3), 
		(1, 3, 1),
		(1, 4, 1),
		(2, 2, 3), 
		(2, 1, 1),
		(3, 1, 1),
		(3, 3, 2), 
		(4, 2, 1),
		(5, 4, 2)
--Cart
INSERT INTO Cart(UserID,BookID,Quantity)
VALUES	(1, 2, 2),
		(1, 3, 2),
		(1, 1, 2),
		(2, 1, 1),
		(2, 2, 1),
		(2, 3, 1),
		(3, 3, 1)

SELECT * FROM Category
SELECT * FROM Book
SELECT * FROM BookDetail
SELECT * FROM Bill
SELECT * FROM BillBook
SELECT * FROM Users
SELECT * FROM Roles
SELECT * FROM Cart
SELECT * FROM Contact

GO


