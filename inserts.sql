insert into Regiones(nombre) values ('Patagonia');
insert into Regiones(nombre) values ('Cuyo');
insert into Regiones(nombre) values ('Pampeana');
insert into Regiones(nombre) values ('Antartica');

insert into Departamento(id_region, nombre) values (1,'Patagonico SA');
insert into Departamento(id_region, nombre) values (2,'Forbes');
insert into Departamento(id_region, nombre) values (2,'Contra Mi');

insert into Empleados(nombre, apellido, nombre_user, fecha_ingreso, id_departamento, salario, porcentaje_comision, comentario) values ('Juan', 'Miskinich', 'Juan.miskinich', '2004-8-20', 2, 354.45, 10.5, 'Sin Comentarios.');
insert into Empleados(nombre, apellido, nombre_user, fecha_ingreso, id_departamento, salario, porcentaje_comision, comentario) values ('Ayelen', 'Miskinich', 'Aye.miskinich', '2014-10-01', 2, 154.5, 0, 'Mala. Simepre con paja.');
insert into Empleados(nombre, apellido, nombre_user, fecha_ingreso, id_departamento, salario, porcentaje_comision, comentario) values ('Gonzalo', 'Florentin', 'Gonza.florentin', '2023-2-10', 2, 220.75, 12.5, 'Buen trabajador. Cumplidor.');

insert into Tipo_cliente(desc_tipo) values ('EXCELENTE');
insert into Tipo_cliente(desc_tipo) values ('MUY BUENO');
insert into Tipo_cliente(desc_tipo) values ('BUENO');
insert into Tipo_cliente(desc_tipo) values ('REGULAR');
insert into Tipo_cliente(desc_tipo) values ('MALO');