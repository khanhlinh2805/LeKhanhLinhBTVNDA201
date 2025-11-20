-- Câu 1
create database sanpham;
use sanpham;
create table san_pham(
id int primary key,
ten_san_pham varchar(255),
danh_muc varchar(100),
gia_ban int,
so_luong_ton int);
insert into san_pham (id, ten_san_pham, danh_muc, gia_ban, so_luong_ton) values
(1, 'Laptop Dell XPS 13', 'Laptop', 28000000, 15),
(2, 'iPhone 14 Pro Max', 'Điện thoại', 32000000, 30),
(3, 'Bàn phím cơ Logitech', 'Phụ kiện', 2500000, 50),
(4, 'Laptop MacBook Air M2', 'Laptop', 29500000, 20),
(5, 'Samsung Galaxy S23 Ultra', 'Điện thoại', 26000000, 25),
(6, 'Chuột không dây Fuhlen', 'Phụ kiện', 450000, 100),
(7, 'Tai nghe Sony WH-1000XM5', 'Phụ kiện', 8500000, 40),
(8, 'Laptop HP Envy 15', 'Laptop', 24000000, 18);
select * from san_pham
where gia_ban between 20000000 and 30000000;
select * from san_pham
where ten_san_pham like '%Laptop%';
select count(*) as so_luong_phu_kien
from san_pham
where danh_muc = 'Phụ kiện';
select * from san_pham
order by gia_ban desc
limit 3;
-- Câu 2
create database sachh;
use sachh;
create table sach(
id int primary key,
tieu_de varchar(255),
tac_gia varchar(255),
the_loai varchar(100),
nam_xuat_ban int,
trang_thai varchar(50));
insert into sach (id, tieu_de, tac_gia, the_loai, nam_xuat_ban, trang_thai) values
(1, 'Dế Mèn phiêu lưu ký', 'Tô Hoài', 'Văn học', 1941, 'Có sẵn'),
(2, 'Cho tôi xin một vé đi tuổi thơ', 'Nguyễn Nhật Ánh', 'Văn học', 2008, 'Đã mượn'),
(3, 'Số đỏ', 'Vũ Trọng Phụng', 'Tiểu thuyết', 1936, 'Có sẵn'),
(4, 'Nhà giả kim', 'Paulo Coelho', 'Tiểu thuyết', 1988, 'Có sẵn'),
(5, 'Mắt biếc', 'Nguyễn Nhật Ánh', 'Văn học', 1990, 'Đã mượn'),
(6, 'Trên đường băng', 'Tony Buổi Sáng', 'Kỹ năng sống', 2015, 'Có sẵn'),
(7, 'Đắc nhân tâm', 'Dale Carnegie', 'Kỹ năng sống', 1936, 'Có sẵn');
select * from sach
where tac_gia = 'Nguyễn Nhật Ánh';
select * from sach
where the_loai in('Văn học','Tiểu thuyết');
select count(*) as so_luong_da_muon
from sach
where trang_thai = 'Đã mượn';
select * from sach
order by nam_xuat_ban asc
limit 2;
-- Câu 3 
create database film_management;
use film_management;
create table phim(
id int primary key,
tieu_de varchar(255),
dao_dien varchar(255),
nam_phat_hanh int,
the_loai varchar(100),
diem_danh_gia decimal(3,1));
insert into phim( id, tieu_de, dao_dien, nam_phat_hanh, the_loai, diem_danh_gia) values
(1, 'Inception', 'Christopher Nolan', 2010, 'Khoa học viễn tưởng', 8.8),
(2, 'The Dark Knight', 'Christopher Nolan', 2008, 'Hành động', 9.0),
(3, 'Parasite', 'Bong Joon Ho', 2019, 'Tâm lý', 8.5),
(4, 'Mắt Biếc', 'Victor Vũ', 2019, 'Lãng mạn', 7.8),
(5, 'Interstellar', 'Christopher Nolan', 2014, 'Khoa học viễn tưởng', 8.6),
(6, 'Avengers: Endgame', 'Anthony Russo', 2019, 'Hành động', 8.4),
(7, 'Joker', 'Todd Phillips', 2019, 'Tâm lý', 8.4);
select * from phim
where dao_dien = 'Christopher Nolan';
select * from phim
where nam_phat_hanh between 2010 and 2019;
select avg (diem_danh_gia) as diem_trung_binh
from phim;
select * from phim
order by diem_danh_gia desc;
-- Câu 4
create database mon_an_management;
use mon_an_management;
create table mon_an(
id int primary key,
ten_mon varchar(255),
danh_muc varchar(100), -- 'Món chính', 'Khai vị', 'Tráng miệng', 'Đồ uống'
gia_tien int,
trang_thai_phuc_vu varchar(50)); -- 'Đang phục vụ', 'Tạm ngưng'
insert into mon_an( id, ten_mon, danh_muc, gia_tien, trang_thai_phuc_vu) values
(1, 'Phở Bò Tái', 'Món chính', 50000, 'Đang phục vụ'),
(2, 'Cơm Gà Xối Mỡ', 'Món chính', 45000, 'Đang phục vụ'),
(3, 'Gỏi Cuốn Tôm Thịt', 'Khai vị', 30000, 'Đang phục vụ'),
(4, 'Bún Bò Huế', 'Món chính', 55000, 'Tạm ngưng'),
(5, 'Nước Cam Ép', 'Đồ uống', 25000, 'Đang phục vụ'),
(6, 'Chè Hạt Sen', 'Tráng miệng', 20000, 'Đang phục vụ'),
(7, 'Cà Phê Sữa Đá', 'Đồ uống', 22000, 'Đang phục vụ'),
(8, 'Bò Lúc Lắc', 'Món chính', 70000, 'Đang phục vụ');
select * from mon_an
where danh_muc in('Món chính','Khai vị');
select min(gia_tien)
from mon_an
where trang_thai_phuc_vu = 'Đang phục vụ';
select * from mon_an
where ten_mon like '%Bò%';
select * from mon_an
order by gia_tien asc
limit 3;
-- Câu 5
create database don_hang_management;
use don_hang_management;
create table don_hang(
id_don_hang int primary key,
id_khach_hang int,
danh_muc varchar(100),
tong_tien int,
ngay_dat date,
trang_thai varchar(50)); -- 'Hoan thanh', 'Da huy'
insert into don_hang( id_don_hang, id_khach_hang, danh_muc, tong_tien, ngay_dat, trang_thai) values
(1, 101, 'Dien tu', 15000000, '2023-01-15', 'Hoan thanh'),
(2, 102, 'Thoi trang', 2500000, '2023-01-20', 'Hoan thanh'),
(3, 101, 'Dien tu', 8000000, '2023-02-10', 'Hoan thanh'),
(4, 103, 'Gia dung', 5000000, '2023-02-12', 'Da huy'),
(5, 102, 'Thoi trang', 3000000, '2023-03-05', 'Hoan thanh'),
(6, 101, 'Gia dung', 4500000, '2023-03-08', 'Hoan thanh'),
(7, 104, 'Dien tu', 22000000, '2023-04-18', 'Hoan thanh'),
(8, 103, 'Thoi trang', 1800000, '2023-04-22', 'Hoan thanh'),
(9, 102, 'Dien tu', 12000000, '2022-12-10', 'Hoan thanh');
select id_khach_hang, sum(tong_tien) as 'tong_chi_tieu'
from don_hang
group by id_khach_hang
order by tong_chi_tieu desc;
select danh_muc, count(id_don_hang) as 'so_luong_don'
from don_hang
group by danh_muc;
select id_khach_hang
from don_hang
group by id_khach_hang
having count(id_khach_hang)>1;
select danh_muc, sum(tong_tien) as 'tong_doanh_thu'
from don_hang 
where trang_thai like 'Hoan thanh'
group by danh_muc
having tong_doanh_thu > 10000000;
-- Câu 6
create database nhat_ky_nguoi_dung_management;
use nhat_ky_nguoi_dung_management;
create table nhat_ky_nguoi_dung (
    id_nhat_ky int primary key,
    id_nguoi_dung int,
    id_bai_viet int,
    chuyen_muc varchar(100),
    thoi_gian_doc_giay int,
    ngay_ghi_nhat_ky date);
insert into nhat_ky_nguoi_dung (id_nhat_ky, id_nguoi_dung, id_bai_viet, chuyen_muc, thoi_gian_doc_giay, ngay_ghi_nhat_ky) values
(1, 1, 101, 'lap trinh', 300, '2023-10-01'),
(2, 2, 102, 'thiet ke', 180, '2023-10-01'),
(3, 1, 103, 'lap trinh', 450, '2023-10-02'),
(4, 3, 104, 'bao mat', 600, '2023-10-03'),
(5, 2, 101, 'lap trinh', 240, '2023-10-03'),
(6, 1, 104, 'bao mat', 500, '2023-10-04'),
(7, 4, 102, 'thiet ke', 120, '2023-10-04'),
(8, 3, 101, 'lap trinh', 320, '2023-10-05'),
(9, 2, 105, 'thiet ke', 200, '2023-10-05');
select id_nguoi_dung, sum(thoi_gian_doc_giay) as tong_thoi_gian_doc
from nhat_ky_nguoi_dung
group by id_nguoi_dung
order by tong_thoi_gian_doc desc;
select chuyen_muc, count(id_nhat_ky) as so_luot_doc
from nhat_ky_nguoi_dung
group by chuyen_muc;
select id_bai_viet
from nhat_ky_nguoi_dung
group by id_bai_viet
having count(id_nguoi_dung) > 1;
select id_nguoi_dung, avg(thoi_gian_doc_giay) as thoi_gian_trung_binh
from nhat_ky_nguoi_dung
group by id_nguoi_dung
having avg(thoi_gian_doc_giay) > 350;
