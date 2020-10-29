use furama_resort;
select khachhang.HoTenKhachHang, count(hopdong.IDkhachang), loaikhach.TenLoaiKhach from khachhang 
join loaikhach on loaikhach.IDloaikhach=khachhang.IDloaikhach
join hopdong on hopdong.IDkhachang=khachhang.IDkhachang
where loaikhach.TenLoaiKhach='Diamond'
order by hopdong.IDkhachang;