create table sach(
masach varchar(10),
tensach varchar(255),
tentacgia varchar(255),
theloai varchar(100),
giaban int);
insert into sach (masach, tensach, tentacgia, theloai, giaban)
values 
('SGK01', 'Đắc Nhân Tâm', 'Dale Carnegie', 'Kỹ năng sống', '120000'),
('SGK02', 'Nhà giả Kim', 'Paulo Coelho', 'Văn học', '89000'),
('SGK03', 'Lược sử loài người', 'Yuval Noah Harari', 'Lịch sử', '150000'),
('SGK04', 'Tư duy nhanh và chậm', 'Daniel Kahneman', 'Kinh doanh', '99000');
set sql_safe_updates = 0;
update sach
set giaban = '180000'
where masach = 'SGK04';
update sach
set tentacgia = 'Paulo Coelho'
where masach = 'SGK02';
delete from sach
where masach = 'SGK01';
select * from sach;