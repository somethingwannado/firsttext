select *from dingdan 

select *from talk

select *from talktu
select *from talkpick
insert into talkpick(id,用户名,pickname,datetim,word) values('6','呼呼歌','草莓苗种植','5.3','好玩')
update talkpick set word='' where id=

select * from deldingdan

DELETE FROM deldingdan WHERE id='3'
select * from pfruit

select * from 团购项目

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

select * from 团购项目  where pickname='草莓苗种植and'pickname='草莓苗种植'

DELETE  FROM dingdan WHERE dingdanname='草莓苗种植' and datetim='4.24'

select SUM from 团购项目  where pickname and datetim='4.24'


SELECT SUM(peo) From 团购项目 as a, dingdan as d where   a.用户名=d.用户名 and a.datatim=d.datetim and d.datetim='4.26' and a.pickname=d.dingdanname and a.pickname='草莓苗种植'

SELECT * From 团购项目 as a, dingdan as d where   a.datatim=d.datetim and d.datetim='4.26' and a.pickname=d.dingdanname and a.pickname='草莓苗种植'

select *from dingdan 
select * from 团购项目

insert into dingdan(id,用户名,dingdanname,datetim,peo,price,way,typee,pay) values(
'343','胡国公','草莓苗种植','4.26',5,30,'组团','体验',1)
insert into dingdan(id,用户名,dingdanname,datetim,peo,price,way,typee,pay) values(
'344','liufei','草莓苗种植','4.26',5,30,'组团','体验',1)

SELECT SUM(peo) From dingdan where datetim='4.26' and dingdanname='草莓苗种植'

select * from talkpick  talk

DELETE  FROM 团购项目 WHERE  用户名=''
create table talkpick(
id char(5) primary key,
用户名 char(20),
pickname char(50),
datetim char(20),
word char(500)
)
insert into talkpick(id,用户名,pickname,datetim,word) values(
'1','呼呼歌','种植体验','4.15',
'这里的树苗和土地质量都不错,看得出商家很用心')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'2','胡国公','团购种植体验','4.16',
'这次带儿子来参加这个种植小树的活动,感觉很有意义,也了解到很多知识,很开心.')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'3','古丽那种','团购种植体验','4.16',
'这次带着班级里的小朋友参加种植活动,可以让他们除了在课堂之外,也能对生物中的植物类,有更好的了解.很值得一来.')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'4','六号燃物类','购买土地','4.18',
'本来没种过树,第一次在这体验了一把,觉得还挺有趣.希望今天种的这颗小树能一直陪我长大')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'5','莎碧囵问吖吖嗄','免费获得土地使用权','2018.4.18',
'哇！！我抢到体验券了！！！太不容易了，竞争好激烈！！好几次网站都登不上去！！')

insert into talkpick(id,用户名,pickname,datetim,word) values(
'6','问吖吖嗄','草莓种植','4.18',
'哇！！我抢到体验券了！！！太不容易了，竞争好激烈！！好几次网站都登不上去！！')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'7','莎碧吖嗄','购地','',
'')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'8','莎碧吖嗄','购地','',
'')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'9','莎碧吖嗄','购地','',
'')
drop table talkpick

DELETE  FROM talkpick WHERE datetim=''

select * from talkpick 

insert into talkpick(id,用户名,pickname,datetim,word) values('957','liufei','苹果苗种植 ','','')