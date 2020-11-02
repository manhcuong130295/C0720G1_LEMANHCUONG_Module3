select dichvu.IDDichVu, dichvu.TenDichVu,dichvu.DienTich,dichvu.ChiPhiThue,loaidichvu.TenLoaiDV from dichvu
inner join loaidichvu on dichvu.IDLoaiDichVu=loaidichvu.IDLoaiDichVu
where not exists(select hopdong.IDHopDong from hopdong where (NgayLamHD between 2019-01-01 and 2019-3-31) and hopdong.IDDichVu=dichvu.IDDichVu);
