select * from news


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

photo char(8) ,
datetim char(20)

)
insert into news(id,title,photo,datetim) values(1,'��������ˮ����Ϯ~','sj1.jpeg','2018.4.18')

insert into news(id,title,photo,datetim) values(2,'���Ӳ�ժ��ſ���Ϯ~','sj2.jpeg','2018.4.19')

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
�Ա� char(5),
�ֻ� char(20),

��ַ char(50)
)
select * from uin

drop table uin


drop table alllist

drop table pfruit
create table pfruit(
id int,
pfname char(20),
photo char(11) ,
datetim char(20),
price int,
miao char(500)
)
insert into pfruit(id,pfname,photo,datetim,price,miao) values(
1,'��ݮ��ժ','pick01.jpeg','2018.4.18','60',
'��ο��Ų�ժ��ˮ����ݮ,λ��52��԰����3����ݮ������Ҫ�а������������������Ʒ�֡������ﵽ��ɢ������ݮ����Ϣ
���СС����ݮ���������ҫ���Եø�Ϊ�ջ󣬻�ӭ����ժƷ��~')
insert into pfruit(id,pfname,photo,datetim,price,miao) values(
2,'���Ѳ�ժ','pick02.jpeg','2018.4.18','60','��ο��Ų�ժ��ˮ������,λ��36��԰����2��3����������
���׵����գ�����԰���Ŀ�����ȴ������һ�������ζ����ҧ��һ�ڣ�����������ĸо�����ֱ�������һ�㡣
������Ρ���Ө��͸���������˿�һ�۾��ܸ��ܵ���������ۣ�������Ѿ��Ȳ���������ȥ����һ��ζ�����Ӿ���ʢ���ˡ��Լ�����ժ�µ����ѣ��Ƿ����������أ�
')
insert into pfruit(id,pfname,photo,datetim,price,miao) values(
3,'ƻ����ժ','pick03.jpeg','2018.4.18','60','��ο��Ų�ժ��ˮ��ƻ��,λ��6��԰����5��6��8��ƻ������
��԰���к츻ʿ����˧�����츻ʿ��Ʒ��,��������ѡ���ժ��ƻ��Ƥ����֭����ࡢ�ڸкã�
�����Լ��İ��˺ͼ�����ƻ��԰��ժ�ɣ��ͼ�������ƻ��԰��ȹ������õļ��ڣ���������ܲ�ժ����Ȥ�����滶��Ц�����ض��顣
')


select * from pfruit


drop table tu
create table tu(
id int,
tuname char(20),
photo char(7),
price char(5),
miao char(500)
)
insert into tu(id,tuname,photo,price,miao) values(
1,'����','tu1.jpg','20',
'��������Ϊɰ��������һ���ʺ���ֲƻ�������ӵȣ��ɹ�һ���Ҳ������ֲ,������,����,����,���Ĺ��ȡ�')
insert into tu(id,tuname,photo,price,miao) values(
2,'����','tu2.jpg','90','�����Ǿ���ǿ���������Ŷ����Ե�ճ�������������ظ�����ֳ�ʣ����Գɺ�ɫ����Щ��ɫ��ֳ�ʣ���Ҫ�Ƕ�ֲ��к�ֲ�ﳤ�ڶѻ������γɵ�.
��ũҵ�����Ƕ���˵���Ժ�����ã���Ϊ����.�ʺ���ֲ, �ձ�����, ƻ��, �棬 ����, ����, ɽ�, ��, ����, ��.
')
insert into tu(id,tuname,photo,price,miao) values(
3,'����','tu3.jpg','60','�����ض�Ϊ��������������ʺ�����һЩϲ����ֲ��磺�������ӡ���ͩ����������ʯ����÷���ﺣ����ֲ��ȵȶ�����.
')

insert into tu(id,tuname,photo,price,miao) values(
4,'����','tu4.jpg','60','��ɫ����������ֲ����ũ����;�����ľ;�����е���ɫ�󶼸�������(̼���)���ס��ص�Ӫ��Ԫ�أ����Ƿ��֡�
�ʺϹ������ո̡����ӡ����ӡ����ӡ����ˡ���÷��⨺��ҡ��㴻�ȡ�')

select * from tu



drop table talktu
create table talktu(
id int,
�û��� char(20),
tuname char(11),
datetim char(20),
word char(500)
)
insert into talktu(id,�û���,tuname,datetim,word) values(
1,'������','����','2018.4.15',
'�������������������,����֮ǰ���Ա��������Ҫ��.�̼һ��ǿ��Ե�')
insert into talktu(id,�û���,tuname,datetim,word) values(
2,'������','����','2018.4.16',
'��δ��������μ������ֲС���Ļ,�о���������,Ҳ�˽⵽�ܶ�֪ʶ,�ܿ���.�´λ������,�о����ӻ�ѧ���ܶ�')
insert into talktu(id,�û���,tuname,datetim,word) values(
3,'��������','����','2018.4.16',
'��δ��Ű༶���С���Ѳμ���ֲ�,���������ǳ����ڿ���֮��,Ҳ�ܶ������е�ֲ����,�и��õ��˽�.��ֵ��һ��.')
insert into talktu(id,�û���,tuname,datetim,word) values(
4,'����ȼ����','����','2018.4.18',
'����û�ֹ���,��һ������������һ��,���û�ͦ��Ȥ.ϣ�������ֵ����С����һֱ���ҳ���')

select * from talktu



drop table fruitkn
create table fruitkn(
id int,
fruitname char(20),
photo char(7),
���� char(1000),
����ϰ�� char(1000),
Ӫ����ֵ char(1000),
������״ char(1000)
)
insert into fruitkn(id,fruitname,photo,����,����ϰ��,Ӫ����ֵ,������״) values(
1,'ƻ��','f1.jpeg',
'�й�����ţ�����ǡ��ٹ⡢Ԫ˧ϵ���콫���ȣ�
�������ʺ졢��¶����⡢��⡢���죻
���������ɽ𡢶��ɡ��º��ǡ����������𱾣�
�Ĵ����ǣ��ۺ���ˡ�������ƻ��ķ��ʯ�ȣ�
��������������̫ƽ��õ�塢���𱾡�������
�ձ�����ʿϵ�����⡢����ϵ�����֡����ɽ�½�¡�ɺ�ĵȡ�',
'ƻ������Ҷ��ľ���н�ǿ�ļ��ԣ�ͨ��������ʢ�����ڸߴ����߿ɴ�15�ף�����������һ���3��5�����ҡ����ɻҺ�ɫ����Ƥ�в���������ѻ�Ƭ״���䣬С֦�⻬��
 ��ʵΪ�ʹ�����ɫ����С��Ʒ�ֶ��졣ϲ�⣬ϲ΢���Ե����������������� ������񡢸����л��ʡ�����Ϊͨ����ˮ���õ�ɳ��������',
'  ƻ�������ݼ�Ʒ�����ܼ��ʣ��ֿ�ʹƤ�������ۡ�ƻ�����ֵ�����ʳ�ÿ100��ֻ����60ǧ��������ƻ����Ӫ���ɷݿ����Դ��ױ��������գ����С���ˮ��֮�ƣ��������ܽ���Ԫ�أ�ʹƤ�������ۡ�
ƻ���к���ͭ���⡢�̡�п�� �ص�Ԫ�أ�������ȱ����ЩԪ�أ�Ƥ���ͻᷢ��������ѡ�������',
'ƻ������ϲ���¸�����´�������Ҫ�����Ϻ������޿�����˵��¶ȷ�Χ����ƽ������9��14�棬�������˵��²�����-12�棬�ļ�����¾��²�����20�棬��10�������5000�����ң��������ڣ�4��10�£�ƽ������12��18�棬������7.2�����µ���1200��1500Сʱ��
����˳��ͨ����Ȼ���ߡ�һ����Ϊ��ƽ���¶���7.5��14 ��ĵ���������������ƻ����ƻ����Ȼ�����ڽϳ����綬���¶ȸߣ��� �����㶬���������������ʱ��������ѿ���롣')

insert into fruitkn(id,fruitname,photo,����,����ϰ��,Ӫ����ֵ,������״) values(
2,'����','f2.jpeg',
'��������Ʒ�ִ�8000�����ϣ��й�Լ��800��������������Ƚ�������Ʒ��ֻ����ʮ��������;�ɷ�Ϊ��ʳ����ơ��Ƹɡ������ӹ�Ʒ�֣��Լ���ľƷ�֡���Ҫ������ʳƷ���У�ɯ�����顢����԰�ʺ󡢾��羧�����ݶ��������޺˰ס�õ���㡢�޷塢���㽶��ţ�̡����ۡ����⣬����
������Ʒ�֣�����š���лϣ���������ء���˾���˹�֡�ɺ���顢��ϼ�顢�ڱ�ŵ��ϼ�����ȡ��л����񹲺͹������������Ⱥ�������ʳƷ������졢��õ�塢���羧�����Ͼ�����졢���㽶������觡������顢���ϵƷ�ֵȣ����Ʒ���й���1�š�����2�ţ��������㡢÷���ȡ�',
'��������ʱ�����������Լ12��-15�棬��͵���ԼΪ10��-13�棬���������¶�Ϊ20�����ң���ʵ����������¶�Ϊ20��-30�森����ҹ�²����ɫ���ǶȽϺá�
���Ѷ�ˮ��Ҫ��ϸߣ��ϸ����������ˮ�����ֺ����ѵ�һ��ǰ�ᡣ�������������ڻ�Ӫ��������ʱ��ˮ���϶࣬�������ڻ����ڣ�������Ϊ˥����ˮ���٣�Ҫ�����˸���Ӱ��Ʒ�ʡ�
���������������ڼ����Ҫ��һ��ǿ�ȵĹ��գ�������Ȼ�ڸ��������������������������࣬����������ϸɰ������Ϊ��ã�ɰ������͸�����ܺã������ʱ�ˮ�����ϲ��������ɰ������ճ����֮�䡣�䱣ˮ����������ǿ��������Ϊ���֣�������������ʢʱ�����������͵��Խ�����ڸ��¹���������ʱ����ʵ�á������ߡ�',
'���������ǡ�ά����C��ά����B1�������ء���Ԫ�ء����Ѻ��зḻ��Ӫ����ֵ�����ѱ���Ϊ��ˮ���ʺ󡱣�������60%���ϵ�����ˮ�ͽ�����ˮ������ˮ�⣬������̼ˮ����������ǡ����ǡ��л��ᡢ�����ʡ��������ʡ��������Լ�����ά���صȶ���������ͱ���ĳɷ֡�',
'���Ѽ�ʽ:һ�����.��������洹ֱ��������ʹʳ���ܣ������ֱ������ϭΪ���ܡ��ƺӹʵ���������Ѷ���ô��ּ�ʽ������ַ�Ϊ����ܺ�˫����ܡ�
�������.���ڶ���Ʒ�ֵĳ�����Ҫ�����������ڷ����֦����5-6�׳������¼����ף��������㡣�����϶̣����׵������ƣ������ϸ��ֱȽ��Ȳ���ͬʱ�����º�ָ��죬�Բ���Ӱ���С������˫ʮ�֡�V���μ�
˫ʮ�֡�V���μ����Ѽ�ʽ����������������ȡ�ýϺõ�Ч��������ʵ��֤�����ּ�ʽ�����Ƚ��ԣ��ǵ���������͵�ʵ�ü�ʽ�������õ��ƹ�Ӧ��ǰ����

')

select * from fruitkn


drop table fruit
create table fruit(
id int,
fruitname char(20),
photo char(9) ,
datetim char(20),
price int,
miao char(500)
)
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
7,'����','sf07.jpeg','18.04',25,'������õ�����ѣ��ſź���ζ')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
2,'ƻ��','sf02.jpeg','18.04',20,'�������ɽ�ƻ���������ִ�')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
3,'��ݮ','sf03.jpeg','18.04',15,'�������Ͳ�ݮ����ζ����ֵ��һ��')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
4,'����','sf04.jpeg','18.04',15,'ɽ����ȣ������ζ����֪��')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
5,'ʯ��','sf05.jpeg','18.04',14,'������ʯ�񣬿ſű�������ζ����')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
6,'�㽶','sf06.jpeg','18.04',8,'���������㽶������ɿ�')
insert into fruit(id,fruitname,photo,datetim,price,miao) values(
1,'ӣ��','sf01.jpeg','18.03',20,'����ӣ�ң��������������')



select * from fruit



drop table buypfcar
create table buypfcar(
id int,
pfname char(20),
�û��� char(20),

photo char(11) ,

price int,
ge int,
summ int,
pay char(10)
)

insert into buypfcar(id,pfname,�û���,photo,price,ge,summ,pay) values(1,'��ݮ��ժ','liufei','pick01.jpeg',60,1,60,'�Ѹ�')

insert into buypfcar(id,pfname,�û���,photo,price,ge,summ,pay) values(1,'��ݮ��ժ','liufei','pick01.jpeg',60,1,60,'δ��')


select * from buypfcar


create table buyfruitcar(
id int,
fruitname char(20),
�û��� char(20),

photo char(9) ,

price int,
ge int,
summ int,
pay char(5)
)



create table buytucar(
id int,
tuname char(20),
�û��� char(20),

photo char(9) ,

price int,
ge int,
summ int,
pay char(5)
)