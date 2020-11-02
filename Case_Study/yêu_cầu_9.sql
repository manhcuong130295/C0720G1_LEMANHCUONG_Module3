select hopdong.NgayLamHD, count(hopdong.IDHopDong) as hopdongtheothang from hopdong
where (month(hopdong.NgayLamHD) between 1 and 12) and year(hopdong.NgayLamHD)='2019'
group by month(hopdong.NgayLamHD);
