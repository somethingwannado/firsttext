create table alllist(
name char(50),
typei int ,
levelnum int ,
heng int
)

insert into alllist(name,typei,levelnum,heng) values('关于果园',1,1,0)
insert into alllist(name,typei,levelnum,heng) values('果园简介',1,2,1)
insert into alllist(name,typei,levelnum,heng) values('果园风景',1,2,2)
insert into alllist(name,typei,levelnum,heng) values('果园最新消息',1,2,3)

insert into alllist(name,typei,levelnum,heng) values('果园活动',2,1,0)
insert into alllist(name,typei,levelnum,heng) values('水果采摘',2,2,1)
insert into alllist(name,typei,levelnum,heng) values('果园观赏',2,2,2)
insert into alllist(name,typei,levelnum,heng) values('自养树苗',2,2,3)
insert into alllist(name,typei,levelnum,heng) values('水果知识科普小课堂',2,2,4)

insert into alllist(name,typei,levelnum,heng) values('水果供应',3,1,0)
insert into alllist(name,typei,levelnum,heng) values('新上水果',3,2,1)
insert into alllist(name,typei,levelnum,heng) values('热销水果',3,2,2)
insert into alllist(name,typei,levelnum,heng) values('折扣水果',3,2,3)


insert into alllist(name,typei,levelnum,heng) values('周边食宿',4,1,0)
insert into alllist(name,typei,levelnum,heng) values('预定餐馆',4,2,1)
insert into alllist(name,typei,levelnum,heng) values('预定宾馆',4,2,2)


insert into alllist(name,typei,levelnum,heng) values('我的',5,1,0)
insert into alllist(name,typei,levelnum,heng) values('我的信息',5,2,1)
insert into alllist(name,typei,levelnum,heng) values('我的购物车',5,2,2)
insert into alllist(name,typei,levelnum,heng) values('我购买过的东西',5,2,3)






select * from alllist

select name from alllist where typei=(Select typei from alllist where name='果园活动' ) and levelnum=2

select name from alllist where typei=(Select typei from alllist where name='果园简介' ) 

select name from alllist where typei=(Select typei from alllist where  name='')

select rtrim(name) from alllist where typei=(Select typei from alllist where  name='果园简介 ')
drop table alllist

drop table news
create table news(
id int,
title char(50),

photo char(50) ,
datetim char(20)

)
insert into news(id,title,photo,datetim) values(1,'春日新上水果来袭~','sj1','2018.4.18')

insert into news(id,title,photo,datetim) values(2,'亲子采摘活动炫酷来袭~','sj2','2018.4.19')

select * from news

create table wen(
id int,
title char(50),
arcitle char(500),)
insert into wen(id,title,arcitle)values(1,'春日新上水果来袭~',
'春天来了部分新鲜水果上市了！这8种不能错过的营养果，给身体补充动力，还能刮油！枇杷：润肺的好食材.金色的小果子，味道甜中带酸，一走进水果超市，香气浓郁的枇杷一下子能把人吸引住。枇杷的表皮黄而多蜡质，因此又被称为黄蜡丸，剥开外皮，里面的果肉味道香浓、柔软多汁、酸甜适口。')

insert into wen(id,title,arcitle)values(2,'亲子采摘活动炫酷来袭~',
'活动介绍连世界都没看过的孩子 
哪有什么世界观 
连土地都没亲近过的孩子 
怎么会热爱生活 
在这个硕果累累的金秋 
带孩子走出城市，走进田园， 
给孩子一次难忘的亲子体验吧。')


select * from wen


create table uin(
用户名 char(20),
密码 char(20),
手机 char(20),
性别 char(5),
地址 char(50)
)
select * from uin