use furama_resort;
select dichvu.IDDichVu, dichvu.TenDichVu,dichvu.DienTich,dichvu.ChiPhiThue,loaidichvu.TenLoaiDV from dichvu
inner join loaidichvu on dichvu.IDLoaiDichVu=loaidichvu.IDLoaiDichVu
where not exists(select hopdong.IDHopDong from hopdong where year(hopdong.NgayLamHD) in('2018','2019') and hopdong.IDDichVu=dichvu.IDDichVu);
