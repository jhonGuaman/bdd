drop table transacciones

create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time,
	constraint transacciones_pk primary key(codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01234,'17233',300,'C','2024-09-24','20:30')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01235,'17234',310,'D','2024-09-24','20:40')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01236,'17334',400,'D','2024-09-25','21:40')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01237,'10234',610,'C','2024-09-24','21:45')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01238,'17534',510,'D','2024-09-24','21:50')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01239,'15634',110,'C','2024-09-24','21:55')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01240,'17004',910,'C','2024-09-24','21:56')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01241,'10034',210,'D','2024-09-24','21:58')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01242,'15634',560,'C','2024-09-24','22:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values (01243,'00234',564,'D','2024-09-24','22:10')

select * from transacciones
where tipo = 'D'

select * from transacciones
where monto
between '200' and '2000'

select codigo, monto, tipo, fecha from transacciones
where fecha is not null

update transacciones set tipo='T'
where monto >'100' and monto < '500'
and extract(month from fecha)='9'
and hora between'14:00' and '20:00'

delete from transacciones
where hora between '14:00' and '18:00'
and extract(month from fecha)='8'
and extract (year from fecha)=extract(year from current_date)

select * from transacciones
where tipo = 'C' 
and numero_cuenta between '222001' and '22004'

select * from transacciones
where tipo = 'D'
and fecha = '2024-05-25' 
and numero_cuenta between '22007' and '22010'

select * from transacciones
where codigo between '1' and '5'
and numero_cuenta between '22002' and '2204'
and fecha between '2024-05-26' and '2024-05-29'