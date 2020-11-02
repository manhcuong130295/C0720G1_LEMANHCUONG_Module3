select dichvudikem.TenDichVuDiKem from dichvudikem 
inner join hopdongchitiet on hopdongchitiet.IDDichVuDiKem=dichvudikem.IDDichVuDiKem
inner join hopdong on hopdongchitiet.IDHopDong=hopdong.IDHopDong
inner join khachhang on hopdong.IDkhachang=khachhang.IDkhachang
inner join loaikhach on loaikhach.IDloaikhach=khachhang.IDloaikhach
where loaikhach.TenLoaiKhach='Diamond';