select hopdong.IDHopDong,hopdong.NgayLamHD,hopdong.NgayKetThuc,hopdong.TienCoc , count(hopdongchitiet.IdHopDongChiTiet) as so_luong_dich_vu_di_kem from hopdong
inner join hopdongchitiet on hopdong.IDHopDong=hopdongchitiet.IDHopDong
group by hopdong.IDHopDong;