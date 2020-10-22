SELECT * FROM baitap.danhsachsv;
-- yeucau1
select * 
from danhsachSV
where ten='Huong';
-- yeucau2
select sum(SoTien) from danhsachsv
where ten='Huong';
-- yeucau3
select*from danhsachsv
group by Ten;