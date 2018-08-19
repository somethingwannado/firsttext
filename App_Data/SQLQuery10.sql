select * from deldingdan

drop table 团购项目
create table 团购项目(
id char(5) primary key,
pickname char(20),
用户名 char(20),
way char(10),
typee char(10),
datatim char(20)
)
insert into 团购项目(id,pickname,用户名,way,typee,datatim) values('1','草莓苗种植','呼呼歌','组团','体验','4.26')
insert into 团购项目(id,pickname,用户名,way,typee,datatim) values('2','草莓苗种植','古丽那种','组团','体验','4.26')
insert into 团购项目(id,pickname,用户名,way,typee,datatim) values('3','草莓苗种植','胡国公','组团','体验','4.26')
insert into 团购项目(id,pickname,用户名,way,typee,datatim) values('4','购买土地','莎碧囵问吖吖嗄','组团','购地','4.26')

select * from 团购项目
select count(*) from 团购项目 where pickname='草莓苗种植';

select * from dingdan where pay=-1 and 用户名='liufei'

