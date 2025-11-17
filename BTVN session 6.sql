-- Câu 1
create database QuanLyThuVien;
use QuanLyThuVien;
create table TacGia(
MaTacGia int primary key auto_increment,
TenTacGia varchar(100) not null,
QuocTich varchar(50));
create table DocGia(
MaDocGia int primary key auto_increment,
TenDocGia varchar(100) not null,
DiaChi varchar(255),
SoDienThoai varchar(15) unique);
-- Câu 2
insert into TacGia (TenTacGia, QuocTich) values
('Nguyễn Nhật Ánh', 'Việt Nam'),
('J.K Rowling', 'Anh'),
('Haruki Murakami', 'Nhật Bản'),
('Dale Carnegie', 'Mỹ');
insert into DocGia (TenDocGia, DiaChi, SoDienThoai) values
('Nguyễn Văn A', '123 Đường ABC, Hà Nội', '0901234567'),
('Trần Thị B', '456 Đường XYZ, TP. Hồ Chí Minh', '0912345678'),
('Lê Văn C', '789 Đường LMN, Đà Nẵng', '0923456789'),
('Phạm Thị D', '101 Đường QRS, Hà Nội', '0934567890'),
('Hoàng Văn E', '202 Đường UVW, Cần Thơ', '0945678901');
-- Câu 3
select * from TacGia
where QuocTich = 'VietNam';
select * from DocGia
where DiaChi = 'Hà Nội';
select TenDocGia, SoDienThoai
from DocGia;
-- Câu 4
update DocGia
set DiaChi = '200 Đường XYZ, TP. Thủ Đức'
where MaDocGia = 2;
delete from TacGia
where MaTacGia = 3;
-- Câu 5
create table Sach(
MaSach int primary key auto_increment,
TenSach varchar(200) not null,
NamXuatBan int,
MaTacGia int,
foreign key (MaTacGia) references TacGia(MaTacGia));
insert into Sach (TenSach, NamXuatBan, MaTacGia) values
('Cho tôi xin một vé đi tuổi thơ', 2008, 1),
('Mắt biếc', 1990, 1),
('Harry Potter và Hòn đá Phù thủy', 1997, 2),
('Harry Potter và Phòng chứa Bí mật', 1998, 2),
('Đắc nhân tâm', 1936, 4);
-- Câu 6
 select * from Sach
 where NamXuatBan >= 1990 and NamXuatBan <= 2000;
 select * from Sach
 where TenSach = 'Hary Potter và Hòn đá Phù thuỷ' or 'Harry Potter và Phòng chứa Bí mật';
 select * from Sach 
 where MaTacGia = 1 and NamXuatBan > 2000;
 -- Câu 7
 select * from Sach
 order by NamXuatBan desc;
 select * from DocGia
 order by TenDocGia asc;
 create table PhieuMuon(
 MaPhieuMuon int primary key auto_increment,
 NgayMuon date,
 NgayTra date null,
 MaDocGia int,
 foreign key (MaDocGia) references DocGia(MaDocGia),
 MaSach int,
 foreign key (MaSach) references Sach(MaSach));
 -- Câu 8
 alter table Sach
 add column TrangThai varchar(50);
update Sach
set TrangThai = 'Còn Hàng'
where NamXuatBan < 2000;
update Sach
set TrangThai = 'Mới Nhập'
where NamXuatBan > 2000;
-- Câu 9
insert into PhieuMuon (MaDocGia, MaSach, NgayMuon, NgayTra) values
(1, 1, '2024-01-10', '2024-01-25'),
(2, 3, '2024-02-15', null),
(1, 2, '2024-03-01', '2024-03-15'),
(3, 4, '2024-03-05', null),
(5, 5, '2024-04-20', '2024-05-01');
select * from PhieuMuon
where MaDocGia = 1;
select * from PhieuMuon
where NgayTra is null;
-- Câu 10
select * from PhieuMuon
where MaDocGia = 1 and NgayTra is null;
delete from PhieuMuon
where MaDocGia = 1;
delete from DocGia
where MaDocGia = 1;