

drop table pick

create table pick(
id char(5) primary key,
pickname char(20),
photo char(7),
price char(5),
miao char(500),
typee char(6),
btype char(6)
)
insert into pick(id,pickname,photo,price,miao,typee,btype) values(
'1','优惠种植体验活动','tu1.jpg','30',
'参与种植打折优惠，仅限种植苹果苗','体验','全部')
insert into pick(id,pickname,photo,price,miao,typee,btype) values(
'2','团购种植体验','tu1.jpg','30',
'满50人即可开团，享受优惠价格','体验','全部')
insert into pick(id,pickname,photo,price,miao,typee,btype) values(
'3','种植体验','tu1.jpg','50',
'无人数要求，预约后即可下单','体验','全部')
insert into pick(id,pickname,photo,price,miao,typee,btype) values(
'4','免费获得土地使用权','tu1.jpg','0',
'50周年庆来袭，免费获得1年土地块使用权。活动仅限预约前20名！！先到先得！！','购地','全部')
insert into pick(id,pickname,photo,price,miao,typee,btype) values(
'5','购买土地','tu1.jpg','100',
'购买土地后，土地块使用权为地主所有。地主可自主种植，其水果所属权均为地主所有。','购地','全部')
select price from pick where pickname='团购种植体验'


create table 团购项目(
id char(5) primary key,
pickname char(20),
用户名 char(20),

typee char(6)
)
insert into 团购项目(id,pickname,用户名,typee) values('1','团购种植体验','呼呼歌','体验')
insert into 团购项目(id,pickname,用户名,typee) values('2','团购种植体验','古丽那种','体验')
insert into 团购项目(id,pickname,用户名,typee) values('3','团购种植体验','胡国公','体验')
insert into 团购项目(id,pickname,用户名,typee) values('4','购买土地','莎碧囵问吖吖嗄','购地')

select * from 团购项目
select count(*) from 团购项目 

drop table talkpick
create table talkpick(
id char(5) primary key,
用户名 char(20),
pickname char(50),
datetim char(20),
word char(500)
)
insert into talkpick(id,用户名,pickname,datetim,word) values(
'1','呼呼歌','种植体验','2018.4.15',
'这里的树苗和土地质量都不错,看得出商家很用心')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'2','胡国公','团购种植体验','2018.4.16',
'这次带儿子来参加这个种植小树的活动,感觉很有意义,也了解到很多知识,很开心.')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'3','古丽那种','团购种植体验','2018.4.16',
'这次带着班级里的小朋友参加种植活动,可以让他们除了在课堂之外,也能对生物中的植物类,有更好的了解.很值得一来.')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'4','六号燃物类','购买土地','2018.4.18',
'本来没种过树,第一次在这体验了一把,觉得还挺有趣.希望今天种的这颗小树能一直陪我长大')
insert into talkpick(id,用户名,pickname,datetim,word) values(
'5','莎碧囵问吖吖嗄','免费获得土地使用权','2018.4.18',
'哇！！我抢到体验券了！！！太不容易了，竞争好激烈！！好几次网站都登不上去！！')

select * from talkpick


drop table dingdan
create table dingdan(
id char(5) primary key,
用户名 char(20),
dingdanname char(50),
datetim char(20),
peo int,
price int ,
typee char(6),
pay bit
)
insert into dingdan(id,用户名,dingdanname,datetim,peo,price,typee,pay) values(
'1','古丽那多吃蔬菜','团购种植体验','3.22',5,30,'体验',-1)
insert into dingdan(id,用户名,dingdanname,datetim,peo,price,typee,pay) values(
'2','古丽的那种','团购种植体验','3.22',3,30,'体验',-1)
insert into dingdan(id,用户名,dingdanname,datetim,peo,price,typee,pay) values(
'3','古丽收到那种','种植体验','3.22',6,50,'体验',0)

select * from dingdan

insert into dingdan(id,用户名,dingdanname,datetim,peo,price,typee,pay) values('tz','','','','是我',null,'','')