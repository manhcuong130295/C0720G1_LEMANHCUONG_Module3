use furama_resort;
-- yêu cầu 2
select * from nhanvien
where nhanvien.HoTenNhanVen = ('H%'or'L%'or'P%') and length(nhanvien.HoTenNhanVen) between 1 and 15;

-- yêu cầu 3
select * from khachhang
where  khachhang.DiaChi='QT' or  khachhang.DiaChi='DN';
