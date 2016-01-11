--aqui declaramos a interface
--aqui sempre antepomos o nome da variable ou atributo o tipo
--ollo porque disitinguense as funcions e procedementos
--ademais diferencias os member dos constructor
--é interesante facer unha emulacion do toString()
create or replace type tipo_alumno as object
(
	number codigo;
	persoa suxeto;
	float primeira;
	float segunda;
	float terceira;

	member function get_codigo() return number,
	member procedure set_codigo(number c),
	member function get_suxeto() return persoa,
	member procedure set_suxeto(persoa s),
	member function get_primeira() return float,
	member procedure set_primeira(float p),
	member function get_segunda() return float,
	member procedure set_segunda(float s),
	member function get_terceira() return float,
	member procedure set_terceira(float t),
	constructor function tipo_alumno(number codigo,persoa suxeito, float primeira, float segunda, float terceira)







);


/*
 a cuestion é que temos que indicar de quen herda se é que herda
 na declaracion da interface abstracta  declaramos os metodos como en c++
 e despois facemos o type body que non vai entre parenteses
 se non que vai entre un as e un end;
 e a coma é subtituida por as ou is e o seu bloque begin end o que
 non entendo e porque se omite o begin na implementacion do tipo
 */
create or replace type body tipo_alumno as
	
	member function get_codigo() return number as
	begin
		return codigo;
	end;

	member procedure set_codigo(number c) as
	begin
		codigo = c;
	end;

	member function get_suxeto() return persoa as
	begin
		return suxeto;
	end;

	member procedure set_suxeto()as
	begin
		codigo = c;
	end;

	

end;
/
