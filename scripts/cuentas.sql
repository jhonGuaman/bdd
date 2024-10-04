drop table cuentas

create table cuentas(
	numero_cuenta varchar(5) not null,
	cedula_propietario varchar(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04555','17244','2024-09-22',345.55)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04556','17144','2024-09-23',545.50)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04557','17246','2024-09-23',245.55)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04558','10744','2024-09-22',100.55)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04559','17247','2024-09-22',768)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04560','17667','2024-09-22',198.55)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04561','17298','2024-09-22',100)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04562','17223','2024-09-22',576)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04563','17244','2024-09-23',876.34)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('04564','10944','2024-09-24',120)

SELECT numero_cuenta, saldo
FROM cuentas

select *from cuentas
where fecha_creacion between '2024-07-01' and '2024-10-01'

select numero_cuenta, saldo from cuentas
where fecha_creacion between '2024-07-01' and '2024-10-01'

update cuentas set saldo=10
where cedula_propietario like '17%'
