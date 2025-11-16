create table donhang(
madonhang int,
ngaydathang date,
tonggiatri int,
thanhphogiaohang varchar(100));
insert into donhang (madonhang, ngaydathang, tonggiatri, thanhphogiaohang)
values
(101, '2023-10-15', '1500000', 'Hà Nội'),
(102, '2023-10-18', '800000', 'Đà Nẵng'),
(103, '2023-10-20', '2200000', 'TP. Hồ Chí Minh'),
(104, '2023-10-22', '750000', 'Hà Nội'),
(105, '2023-10-25', '3100000', 'TP. Hồ Chí Minh');
select * from donhang 
where tonggiatri > 1000000;
select * from donhang
where thanhphogiaohang = 'TP. Hồ Chí Minh';
select * from donhang
order by tonggiatri desc;
select distinct thanhphogiaohang
from donhang;