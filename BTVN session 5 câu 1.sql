create database khach_hang;
use khach_hang;
create table khachhang(
makhachhang int,
hoten varchar(255),
email varchar(255),
sodienthoai varchar(15),
ngaydangky date );
insert into khachhang (makhachhang, hoten, email, sodienthoai, ngaydangky)
values
(1, 'Nguyễn Văn An', 'an.nguyen@mail.com', '0901234567', '2023-10-25'),
(2, 'Trần Thị Bình', 'binh.tran@email.com', '0912345678', '2023-10-26'),
(3, 'Lê Minh Cường', 'cuong.le@email.com', '0987654321', '2023-11-01'),
(4, 'Phạm Thị Dung', 'dung.pham@email.com', '0934567890', '2023-11-02'),
(5, 'Hoàng Văn Em', 'em.hoang@email.com', '0945678901', '2023-11-03');
select * from khachhang;
select hoten, email
from khachhang;