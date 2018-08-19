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

 select* from alllist
 
drop table alllist

select name from alllist where typei=(Select typei from alllist where name='果园活动')