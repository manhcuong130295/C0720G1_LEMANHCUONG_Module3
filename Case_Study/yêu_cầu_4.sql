use furama_resort;
select khachhang.HoTenKhachHang, loaikhach.TenLoaiKhach,count(hopdong.IDHopDong) as so_lan_dat_phong  from khachhang 
join hopdong on hopdong.IDkhachang=khachhang.IDkhachang
join loaikhach on loaikhach.IDloaikhach=khachhang.IDloaikhach
where loaikhach.TenLoaiKhach='Diamond' 
group by hopdong.IDkhachang
order by  so_lan_dat_phong;
