drop type tipo_direccion;
/
create or replace type tipo_direccion as object
(
calle varchar2(25),
ciudad varchar2(20),
codigo_post number(5),
member procedure set_calle (c varchar2),
member function get_calle return varchar2,
member procedure set_ciudad (c varchar2),
member function get_ciudad return varchar2,
member procedure set_codigo (c number),
member function get_codigo return number,
member function toStr return varchar2,
constructor function tipo_direccion (calle varchar2, ciudad varchar2, codigo_post number)
return self as result
---- A seguinte declaracion indica que os obxectos direccion se van comparar polo seu atributo codigo
);
/

create or replace type body tipo_direccion as
	--------
	member procedure set_calle (c varchar2) is
	begin
		calle := c;
	end;
	---------
	member function get_calle return varchar2 is
	begin
		return calle;
	end;
	----------
	member procedure set_ciudad (c varchar2) is
	begin
		ciudad := c;
	end;
	---------
	member function get_ciudad return varchar2 is
	begin
		return ciudad;
	end;
	
	member procedure set_codigo (c number) is
	begin
		codigo_post := c;
	end;
	---------
	member function get_codigo return number is
	begin
		return codigo_post;
	end;

	member function toStr return varchar2 as
	begin
		return calle || ' ' || ciudad || ' ' || codigo_post;
	end;

	constructor function tipo_direccion (calle varchar2, ciudad varchar2, codigo_post number)
	return self as result
	is
	begin
		self.calle := calle;
		self.ciudad := ciudad;
		self.codigo_post := codigo_post;
		return;
	end;
	--------
end; --o end pertence o type body que non fai falla iniciar con begin
--mellor executar o script copy paste no shell
/
