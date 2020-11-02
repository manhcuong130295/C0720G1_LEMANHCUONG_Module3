-- cách 1
select distinct khachhang.HoTenKhachHang from khachhang;

-- cách 2
select khachhang.HoTenKhachHang from khachhang
group by HoTenKhachHang;

-- cách 3
select khachhang.HoTenKhachHang from khachhang union select khachhang.HoTenKhachHang from khachhang;

