create  database baitap;
use baitap;
create table danhmuc(
ma_loaisach int auto_increment,
constraint PK_Categories primary key (ma_loaisach) ,
loaisach nvarchar(50) not null unique,
Description nvarchar(500)
);

create table Sach(
ma_sach int auto_increment,
constraint PK_Sach primary key(ma_sach),
ten_sach nvarchar(50) not null,
nxb nvarchar(50) not null,
tac_gia nvarchar(50) not null,
nam_xuat_ban datetime,
so_lan_xuat_ban int,
gia_thue int not null,
anh_sach varchar(4000),
ma_loaisach int not null
);

create table sinhvien(
maSV nvarchar(50) ,
constraint PK_thethuvien primary key(maSV),
tenSv nvarchar(50) not null,
ngaysinh date not null,
diachi nvarchar(100),
email nvarchar(100) not null unique,
sdt nvarchar(50),
anhSv varchar(4000)
);

create table the_muon(
ma_phieu int auto_increment,
constraint PK_the_muon primary key(ma_phieu),
ngay_muon datetime default current_timestamp,
ngay_tra datetime not null ,
trangThai nvarchar(50) default('con no'),
constraint check(trangThai='da tra' or trangThai='con no'),
constraint check(ngay_tra >= ngay_muon),
maSV nvarchar(50) not null
);

create table chi_tiet(
ma_phieu int not null,
ma_sach int not null
);

alter table sach
add constraint FK_danhmuc_sach foreign key(ma_loaisach) references danhmuc(ma_loaisach);

alter table  the_muon
add constraint FK_SinhVien_theMuon foreign key(maSV) references sinhvien(maSV);

alter table chi_tiet
add constraint FK_PhieuMUon_chitiet foreign key(ma_phieu) references the_muon(ma_phieu);

alter table chi_tiet
add constraint FK_Sach_chitiet foreign key(ma_sach) references Sach(ma_sach);
