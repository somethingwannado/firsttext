create table alllist(
name char(50),
typei int ,
levelnum int ,
heng int
)

insert into alllist(name,typei,levelnum,heng) values('���ڹ�԰',1,1,0)
insert into alllist(name,typei,levelnum,heng) values('��԰���',1,2,1)
insert into alllist(name,typei,levelnum,heng) values('��԰�羰',1,2,2)
insert into alllist(name,typei,levelnum,heng) values('��԰������Ϣ',1,2,3)

insert into alllist(name,typei,levelnum,heng) values('��԰�',2,1,0)
insert into alllist(name,typei,levelnum,heng) values('ˮ����ժ',2,2,1)
insert into alllist(name,typei,levelnum,heng) values('��԰����',2,2,2)
insert into alllist(name,typei,levelnum,heng) values('��������',2,2,3)
insert into alllist(name,typei,levelnum,heng) values('ˮ��֪ʶ����С����',2,2,4)

insert into alllist(name,typei,levelnum,heng) values('ˮ����Ӧ',3,1,0)
insert into alllist(name,typei,levelnum,heng) values('����ˮ��',3,2,1)
insert into alllist(name,typei,levelnum,heng) values('����ˮ��',3,2,2)
insert into alllist(name,typei,levelnum,heng) values('�ۿ�ˮ��',3,2,3)


insert into alllist(name,typei,levelnum,heng) values('�ܱ�ʳ��',4,1,0)
insert into alllist(name,typei,levelnum,heng) values('Ԥ���͹�',4,2,1)
insert into alllist(name,typei,levelnum,heng) values('Ԥ������',4,2,2)


insert into alllist(name,typei,levelnum,heng) values('�ҵ�',5,1,0)
insert into alllist(name,typei,levelnum,heng) values('�ҵ���Ϣ',5,2,1)
insert into alllist(name,typei,levelnum,heng) values('�ҵĹ��ﳵ',5,2,2)
insert into alllist(name,typei,levelnum,heng) values('�ҹ�����Ķ���',5,2,3)






select * from alllist

select name from alllist where typei=(Select typei from alllist where name='��԰�' ) and levelnum=2

select name from alllist where typei=(Select typei from alllist where name='��԰���' ) 

select name from alllist where typei=(Select typei from alllist where  name='')

select rtrim(name) from alllist where typei=(Select typei from alllist where  name='��԰��� ')
drop table alllist

drop table news
create table news(
id int,
title char(50),

photo char(50) ,
datetim char(20)

)
insert into news(id,title,photo,datetim) values(1,'��������ˮ����Ϯ~','sj1','2018.4.18')

insert into news(id,title,photo,datetim) values(2,'���Ӳ�ժ��ſ���Ϯ~','sj2','2018.4.19')

select * from news

create table wen(
id int,
title char(50),
arcitle char(500),)
insert into wen(id,title,arcitle)values(1,'��������ˮ����Ϯ~',
'�������˲�������ˮ�������ˣ���8�ֲ��ܴ����Ӫ�����������岹�䶯�������ܹ��ͣ����ˣ���εĺ�ʳ��.��ɫ��С���ӣ�ζ�����д��ᣬһ�߽�ˮ�����У�����Ũ��������һ�����ܰ�������ס�����˵ı�Ƥ�ƶ������ʣ�����ֱ���Ϊ�����裬������Ƥ������Ĺ���ζ����Ũ�������֭�������ʿڡ�')

insert into wen(id,title,arcitle)values(2,'���Ӳ�ժ��ſ���Ϯ~',
'����������綼û�����ĺ��� 
����ʲô����� 
�����ض�û�׽����ĺ��� 
��ô���Ȱ����� 
�����˶�����۵Ľ��� 
�������߳����У��߽���԰�� 
������һ����������������ɡ�')


select * from wen


create table uin(
�û��� char(20),
���� char(20),
�ֻ� char(20),
�Ա� char(5),
��ַ char(50)
)
select * from uin