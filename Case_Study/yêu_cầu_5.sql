select khachhang.IDkhachang,khachhang.HoTenKhachHang,loaikhach.TenLoaiKhach,hopdong.IDHopDong,dichvu.TenDichVu,hopdong.NgayLamHD,hopdong.NgayKetThuc ,
sum(dichvu.ChiPhiThue+dichvudikem.DonVi*dichvudikem.GiaDVDiKem) as TongTien from khachhang
left join loaikhach on khachhang.IDloaikhach=loaikhach.IDloaikhach
left join hopdong on khachhang.IDkhachang=hopdong.IDkhachang
left join dichvu on hopdong.IDDichVu=dichvu.IDDichVu
left join hopdongchitiet on hopdong.IDHopDong=hopdongchitiet.IDHopDong
left join dichvudikem on dichvudikem.IDDichVuDiKem=hopdongchitiet.IDDichVuDiKem
group by hopdong.IDHopDong;