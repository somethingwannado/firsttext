select *from dingdan 

select *from talk

select *from talktu
select *from talkpick
insert into talkpick(id,�û���,pickname,datetim,word) values('6','������','��ݮ����ֲ','5.3','����')
update talkpick set word='' where id=

select * from deldingdan

DELETE FROM deldingdan WHERE id='3'
select * from pfruit

select * from �Ź���Ŀ

drop table �Ź���Ŀ
create table �Ź���Ŀ(
id char(5) primary key,
pickname char(20),
�û��� char(20),
way char(10),
typee char(10),
datatim char(20)
)
insert into �Ź���Ŀ(id,pickname,�û���,way,typee,datatim) values('1','��ݮ����ֲ','������','����','����','4.26')
insert into �Ź���Ŀ(id,pickname,�û���,way,typee,datatim) values('2','��ݮ����ֲ','��������','����','����','4.26')
insert into �Ź���Ŀ(id,pickname,�û���,way,typee,datatim) values('3','��ݮ����ֲ','������','����','����','4.26')
insert into �Ź���Ŀ(id,pickname,�û���,way,typee,datatim) values('4','��������','ɯ������߹߹��','����','����','4.26')

select * from �Ź���Ŀ  where pickname='��ݮ����ֲand'pickname='��ݮ����ֲ'

DELETE  FROM dingdan WHERE dingdanname='��ݮ����ֲ' and datetim='4.24'

select SUM from �Ź���Ŀ  where pickname and datetim='4.24'


SELECT SUM(peo) From �Ź���Ŀ as a, dingdan as d where   a.�û���=d.�û��� and a.datatim=d.datetim and d.datetim='4.26' and a.pickname=d.dingdanname and a.pickname='��ݮ����ֲ'

SELECT * From �Ź���Ŀ as a, dingdan as d where   a.datatim=d.datetim and d.datetim='4.26' and a.pickname=d.dingdanname and a.pickname='��ݮ����ֲ'

select *from dingdan 
select * from �Ź���Ŀ

insert into dingdan(id,�û���,dingdanname,datetim,peo,price,way,typee,pay) values(
'343','������','��ݮ����ֲ','4.26',5,30,'����','����',1)
insert into dingdan(id,�û���,dingdanname,datetim,peo,price,way,typee,pay) values(
'344','liufei','��ݮ����ֲ','4.26',5,30,'����','����',1)

SELECT SUM(peo) From dingdan where datetim='4.26' and dingdanname='��ݮ����ֲ'

select * from talkpick  talk

DELETE  FROM �Ź���Ŀ WHERE  �û���=''
create table talkpick(
id char(5) primary key,
�û��� char(20),
pickname char(50),
datetim char(20),
word char(500)
)
insert into talkpick(id,�û���,pickname,datetim,word) values(
'1','������','��ֲ����','4.15',
'������������������������,���ó��̼Һ�����')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'2','������','�Ź���ֲ����','4.16',
'��δ��������μ������ֲС���Ļ,�о���������,Ҳ�˽⵽�ܶ�֪ʶ,�ܿ���.')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'3','��������','�Ź���ֲ����','4.16',
'��δ��Ű༶���С���Ѳμ���ֲ�,���������ǳ����ڿ���֮��,Ҳ�ܶ������е�ֲ����,�и��õ��˽�.��ֵ��һ��.')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'4','����ȼ����','��������','4.18',
'����û�ֹ���,��һ������������һ��,���û�ͦ��Ȥ.ϣ�������ֵ����С����һֱ���ҳ���')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'5','ɯ������߹߹��','��ѻ������ʹ��Ȩ','2018.4.18',
'�ۣ�������������ȯ�ˣ�����̫�������ˣ������ü��ң����ü�����վ���ǲ���ȥ����')

insert into talkpick(id,�û���,pickname,datetim,word) values(
'6','��߹߹��','��ݮ��ֲ','4.18',
'�ۣ�������������ȯ�ˣ�����̫�������ˣ������ü��ң����ü�����վ���ǲ���ȥ����')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'7','ɯ��߹��','����','',
'')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'8','ɯ��߹��','����','',
'')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'9','ɯ��߹��','����','',
'')
drop table talkpick

DELETE  FROM talkpick WHERE datetim=''

select * from talkpick 

insert into talkpick(id,�û���,pickname,datetim,word) values('957','liufei','ƻ������ֲ ','','')