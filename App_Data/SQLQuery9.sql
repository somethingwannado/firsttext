select rtrim(typee) from pick

select count(*) from �Ź���Ŀ where pickname='��ݮ����ֲ'
select * from dingdan

select * from �Ź���Ŀ



drop table pick

create table pick(
id char(5) primary key,
pickname char(20),
photo char(7),
price char(5),
afprice char(5),
miao char(500),
typee char(6),
btype char(6)
)
insert into pick(id,pickname,photo,price,afprice,miao,typee,btype) values(
'1','ƻ������ֲ','tu1.jpg','40','29',
'������ֲƻ��������,��������Ż�','�','ȫ��')
insert into pick(id,pickname,photo,price,afprice,miao,typee,btype) values(
'2','��������ֲ','tu1.jpg','50','30',
'�������ѵ�λ��������Ŷ','����','ȫ��')
insert into pick(id,pickname,photo,price,afprice,miao,typee,btype) values(
'3','��ݮ����ֲ','tu1.jpg','50','30',
'��ݮ���ѵ�λ��������Ŷ','����','ȫ��')

insert into pick(id,pickname,photo,price,afprice,miao,typee,btype) values(
'4','��������','tu1.jpg','100','80',
'�������غ����ؿ�ʹ��ȨΪ�������С�������������ֲ����ˮ������Ȩ��Ϊ�������С�','����','ȫ��')
insert into pick(id,pickname,photo,price,afprice,miao,typee,btype) values(
'5','��ѻ������ʹ��Ȩ','tu1.jpg','0','0',
'50��������Ϯ����ѻ��1�����ؿ�ʹ��Ȩ�������ԤԼǰ20�������ȵ��ȵã���','����','ȫ��')
insert into pick(id,pickname,photo,price,afprice,miao,typee,btype) values(
'6','�Żݹ���','tu1.jpg','90','70','�Żݴ󽵼���ء�','�','ȫ��')


select typee from pick where pickname='��ݮ����ֲ'

select price from pick where pickname='��ݮ����ֲ'





drop table talkpick
create table talkpick(
id char(5) primary key,
�û��� char(20),
pickname char(50),
datetim char(20),
word char(500)
)
insert into talkpick(id,�û���,pickname,datetim,word) values(
'1','������','��ֲ����','2018.4.15',
'������������������������,���ó��̼Һ�����')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'2','������','�Ź���ֲ����','2018.4.16',
'��δ��������μ������ֲС���Ļ,�о���������,Ҳ�˽⵽�ܶ�֪ʶ,�ܿ���.')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'3','��������','�Ź���ֲ����','2018.4.16',
'��δ��Ű༶���С���Ѳμ���ֲ�,���������ǳ����ڿ���֮��,Ҳ�ܶ������е�ֲ����,�и��õ��˽�.��ֵ��һ��.')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'4','����ȼ����','��������','2018.4.18',
'����û�ֹ���,��һ������������һ��,���û�ͦ��Ȥ.ϣ�������ֵ����С����һֱ���ҳ���')
insert into talkpick(id,�û���,pickname,datetim,word) values(
'5','ɯ������߹߹��','��ѻ������ʹ��Ȩ','2018.4.18',
'�ۣ�������������ȯ�ˣ�����̫�������ˣ������ü��ң����ü�����վ���ǲ���ȥ����')

select * from talkpick


drop table dingdan
create table dingdan(
id char(5) primary key,
�û��� char(20),
dingdanname char(50),
datetim char(20),
peo int,
price int ,
way char(10),
typee char(10),
pay bit
)
insert into dingdan(id,�û���,dingdanname,datetim,peo,price,way,typee,pay) values(
'1','�����Ƕ���߲�','��ݮ����ֲ','3.22',5,30,'����','����',-1)
insert into dingdan(id,�û���,dingdanname,datetim,peo,price,way,typee,pay) values(
'2','����������','��ݮ����ֲ','3.22',3,30,'����','����',-1)
insert into dingdan(id,�û���,dingdanname,datetim,peo,price,way,typee,pay) values(
'3','�����յ�����','��ݮ����ֲ','3.22',6,50,'ɢ��','����',0)
insert into dingdan(id,�û���,dingdanname,datetim,peo,price,way,typee,pay) values(
'4','�ŵ���','��ѻ������ʹ��Ȩ','3.22',1,0,'','����',-1)
insert into dingdan(id,�û���,dingdanname,datetim,peo,price,way,typee,pay) values(
'5','������','��ѻ������ʹ��Ȩ','3.22',1,0,'','����',-1)

select * from dingdan

select  �۸�=peo*price  from dingdan where id='1'

insert into dingdan(id,�û���,dingdanname,datetim,peo,price,typee,pay) values('tz','','','','',null,'','')

update dingdan set �û���='liuxn' where id='2450'


update dingdan set pay=-1 where id='2450'


select * from dingdan

drop table deldingdan
create table deldingdan(
id char(5) primary key,
pickname char(20),
�û��� char(20),
datetim char(20),
typee char(10),
way char(10),
reason char(500)
)
insert into deldingdan(id,pickname,�û���,datetim,typee,way,reason) values('1','��ݮ����ֲ','������','4.22','����','����','ͻȻ����')

insert into deldingdan(id,pickname,�û���,datetim,typee,way,reason) values('2','��������ֲ','����','4.22','����','ɢ��','����ȥ��')
insert into deldingdan(id,pickname,�û���,datetim,typee,way,reason) values('3','��ݮ����ֲ','������','4.22','����','ɢ��','ͻȻ����')
insert into deldingdan(id,pickname,�û���,datetim,typee,way,reason) values('4','��ݮ����ֲ','������','4.22','����','����','ͻȻ����')
insert into deldingdan(id,pickname,�û���,datetim,typee,way,reason) values('5','�����','������','4.22','����','����','ͻȻ����')
select * from deldingdan

select count(*) from dingdan where typee='����'

select rtrim(typee) from pick

select rtrim(typee) from pick