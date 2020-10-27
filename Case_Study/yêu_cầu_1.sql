-- Yêu cầu 1
use furama_resort;
insert into bophan(TenBoPhan) values
(' Sale – Marketing'),
('Hành Chính'),
('Phục Vụ'),
('Quản lý');

insert into vitri(TenViTri) values
('Phục Vụ'),
('Lễ Tân'),
('chuyên viên'),
('Giám đốc'),
('Giám sát'),
('Quản lý');

insert into trinhdo(TrinhDo) values
('Trung cấp'),
('Cao đẳng'),
('Đại học');

insert into nhanvien(HoTenNhanVen,IDViTri,IDTrinhDo,IDBoPhan,Ngaysinh,SoCMND,Email,DiaChi) values
('Nguyễn Thị Hà', 3, 3, 2, '1991-01-01', '1234 5', 'HQ@hq.com', 'DN'),  
('Lê Văn Nam', 2, 1, 3, '1992-01-01', '1459846', 'T@hq.com', 'QT'),  
('Hoàng Văn Thái', 1, 2, 1, '1993-01-01',' 189749813', 'K@hqh.com', 'QN'),
('Trần Nam ', 1, 2, 1, '1993-01-01', '14698489', 'K@hq.com', 'DN'),
('Phan Văn Kiên',1,3,3,'1997-02-15','58484356','abcd@gmail.com','HN');
 
insert into loaidichvu(TenLoaiDV) values 
('Villa'),
('House'),
('Room');

insert into kieuthue(TenKieuThue,GiaThue) values
('Ngày',100),
('Tháng',500),
('Năm',1000);

insert  into dichvu(TenDichVu,DienTich,SoTang,SoNguoiToiDa,ChiPhiThue,IDkieuThue,IDLoaiDichVu,TrangThai) values
('Villa',40,5,10,300,2,1,'on'),
('House',35,3,5,200,2,2,'On'),
('Room',30,1,3,150,3,3,'on'),
('Villa',50,5,10,500,1,1,'on'),
('Villa',40,5,10,300,2,1,'on'),
('House',40,3,5,300,1,2,'On'),
('Room',30,1,3,250,2,3,'on'),
('Villa',70,5,3,1000,1,1,'on');

insert into loaikhach(TenLoaiKhach) values
('Normal'),
('Silver'),
('Gold'),
('Platium'),
('Diamond');

insert into khachhang(IDloaikhach,HoTenKhachHang,Ngaysinh,SoCMND,Email,DiaChi) values
(1,'Nguyen Van A','1997-12-20','4984968','vfggr@xmail.com','DN'),
(3,'Le Van C','1995-07-02','5946546','vsdoif@xmail.com','QT'),
(4,'Phan Văn D','1994-12-11','46463','gretwqe@gmail.com','QN'),
(2,'Trần Văn E','1998-4-30','488964968','jyutoyi@xmail.com','ND'),
(5,'Trương Văn B','1992-10-11','674987','eworhto@xmail.com','QB')
;

insert into hopdong(IDNhanVien,IDkhachang,IDDichVu,NgayLamHD,NgayKetThuc,TienCoc,TongTien) values
(1,2,2,'2019-02-28','2019-03-28',1000,2000),
(3,2,3,'2020-01-25','2020-01-26',50,200),
(2,3,4,'2019-02-28','2019-03-28',100,2000),
(1,3,2,'2019-10-01','2019-10-02',150,2000),
(1,2,2,'2019-01-29','2019-05-28',130,2000),
(1,1,2,'2018-02-20','2018-05-28',130,2000),
(1,1,2,'2020-02-29','2020-05-28',130,2000)
;

insert into dichvudikem(TenDichVuDiKem,GiaDVDiKem,DonVi,TrangThaiKhaDung) values
       ('karaoke',200,1,'ok'),
       ('đồ uống',300,2,'ok'),
       ('massage',500,3,'not ok'),
       ('thức ăn',100,4,'not ok'),
       ('karaoke',200,5,'ok');

insert into hopdongchitiet(IDHopDong,IDDichVuDiKem,SoLuong) values
(2,3,4),(3,2,1),(4,1,2),(5,3,3),(1,2,5),(1,3,1);
;
