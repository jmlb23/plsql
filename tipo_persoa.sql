--aqui declaramos a interface
--aqui sempre antepomos o nome da variable ou atributo o tipo
--ollo porque disitinguense as funcions e procedementos
--ademais diferencias os member dos constructor
--é interesante facer unha emulacion do toString()
create or replace type tipo_alumno as object
(
	codigo number,
	suxeito persoa,
	primeira float,
	segunda float,
	terceira float,

	member function get_codigo return number,
	member procedure set_codigo(c number),
	member function get_suxeto return persoa,
	member procedure set_suxeto(s persoa),
	member function get_primeira return float,
	member procedure set_primeira(p float),
	member function get_segunda return float,
	member procedure set_segunda(s float),
	member function get_terceira return float,
	member procedure set_terceira(t float),
	member function toStr return varchar2,
	constructor function tipo_alumno (codigo number,suxeito persoa,primeira float,segunda float,terceira float) 
	return self as result







);
/


/*
 a cuestion é que temos que indicar de quen herda se é que herda
 na declaracion da interface abstracta  declaramos os metodos como en c++
 e despois facemos o type body que non vai entre parenteses
 se non que vai entre un as e un end;
 e a coma é subtituida por as ou is e o seu bloque begin end o que
 non entendo e porque se omite o begin na implementacion do tipo
 */

create or replace type body tipo_alumno as
	
	member function get_codigo return number as
	begin
		return codigo;
	end;

	member procedure set_codigo(c number) as
	begin
		codigo := c;
	end;

	member function get_suxeto return persoa as
	begin
		return suxeito;
	end;

	member procedure set_suxeto(s persoa)as
	begin
		suxeito := s;
	end;


	member function get_primeira return float as
	begin
		return primeira;
	end;

	member procedure set_primeira(p float) as
	begin
		primeira := p;
	end;

	member function get_segunda return float as
	begin
		return segunda;
	end;

	member procedure set_segunda(s float) as
	begin
		segunda := s;
	end;

	member function get_terceira return float as
	begin
		return terceira;
	end;

	member procedure set_terceira(t float) as
	begin
		terceira := t;
	end;

	member function toStr return varchar2 as
	begin
		return codigo || ' ' || suxeito.toStr || ' ' || primeira || ' ' || segunda || '' || terceira; 
	end;

	constructor function tipo_alumno(codigo number,suxeito persoa,primeira float,segunda float,terceira float) 
	return self as result as
	begin
		self.codigo := codigo;
		self.suxeito := suxeito;
		self.primeira := primeira;
		self.segunda := segunda;
		self.terceira := terceira;
		return;
	end;
end;
/
