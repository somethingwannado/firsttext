

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
'1','�Ż���ֲ����','tu1.jpg','30',
'������ֲ�����Żݣ�������ֲƻ����','����','ȫ��')
insert into pick(id,pickname,photo,price,miao,typee,btype) values(
'2','�Ź���ֲ����','tu1.jpg','30',
'��50�˼��ɿ��ţ������Żݼ۸�','����','ȫ��')
insert into pick(id,pickname,photo,price,miao,typee,btype) values(
'3','��ֲ����','tu1.jpg','50',
'������Ҫ��ԤԼ�󼴿��µ�','����','ȫ��')
insert into pick(id,pickname,photo,price,miao,typee,btype) values(
'4','��ѻ������ʹ��Ȩ','tu1.jpg','0',
'50��������Ϯ����ѻ��1�����ؿ�ʹ��Ȩ�������ԤԼǰ20�������ȵ��ȵã���','����','ȫ��')
insert into pick(id,pickname,photo,price,miao,typee,btype) values(
'5','��������','tu1.jpg','100',
'�������غ����ؿ�ʹ��ȨΪ�������С�������������ֲ����ˮ������Ȩ��Ϊ�������С�','����','ȫ��')
select price from pick where pickname='�Ź���ֲ����'


create table �Ź���Ŀ(
id char(5) primary key,
pickname char(20),
�û��� char(20),

typee char(6)
)
insert into �Ź���Ŀ(id,pickname,�û���,typee) values('1','�Ź���ֲ����','������','����')
insert into �Ź���Ŀ(id,pickname,�û���,typee) values('2','�Ź���ֲ����','��������','����')
insert into �Ź���Ŀ(id,pickname,�û���,typee) values('3','�Ź���ֲ����','������','����')
insert into �Ź���Ŀ(id,pickname,�û���,typee) values('4','��������','ɯ������߹߹��','����')

select * from �Ź���Ŀ
select count(*) from �Ź���Ŀ 

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
typee char(6),
pay bit
)
insert into dingdan(id,�û���,dingdanname,datetim,peo,price,typee,pay) values(
'1','�����Ƕ���߲�','�Ź���ֲ����','3.22',5,30,'����',-1)
insert into dingdan(id,�û���,dingdanname,datetim,peo,price,typee,pay) values(
'2','����������','�Ź���ֲ����','3.22',3,30,'����',-1)
insert into dingdan(id,�û���,dingdanname,datetim,peo,price,typee,pay) values(
'3','�����յ�����','��ֲ����','3.22',6,50,'����',0)

select * from dingdan

insert into dingdan(id,�û���,dingdanname,datetim,peo,price,typee,pay) values('tz','','','','����',null,'','')