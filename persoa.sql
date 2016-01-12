create or replace type persoa as object
(
	codigo number,
	nombre varchar2(150),
	direct tipo_direccion,
	fecha_nac date,
	member procedure set_codigo (c number),
	member function get_codigo return number,
	member procedure set_nombre (c varchar2),
	member function get_nombre return varchar2,
	member procedure set_direct (c tipo_direccion),
	member function get_direct return tipo_direccion,
	member procedure set_fecha (c date),
	member function get_fecha return date,
	member function toStr return varchar2,
	constructor function persoa (codigo number,nombre varchar2, direct tipo_direccion, fecha_nac date) 
	return self as result
	
);
/
create or replace type body persoa as
	member procedure set_codigo(c number) is
	begin
		codigo := c;
	end;
	member function get_codigo return number is
	begin
		return codigo;
	end;
	member procedure set_nombre(c varchar2) is
	begin
		nombre := c;
	end;
	member function get_nombre return varchar2 is
	begin
		return nombre;
	end;
	member procedure set_direct(c tipo_direccion) is
	begin
		direct := c;
	end;
	member function get_direct return tipo_direccion is
	begin
		return direct;
	end;
	member procedure set_fecha(c date) is
	begin
		fecha_nac := c;
	end;
	member function get_fecha return date is
	begin
		return fecha_nac;
	end;
	
	member function toStr return varchar2 as
	begin
		return codigo || ' ' || nombre || ' ' || direct.toStr || ' ' || fecha_nac;
	end;

	constructor function persoa(codigo number,nombre varchar2, direct tipo_direccion, fecha_nac date) 
	return self as result
	is
	begin
		self.codigo := codigo;
		self.nombre := nombre;
		self.direct := direct;
		self.fecha_nac := fecha_nac;
		return;
	end;
end;
/
