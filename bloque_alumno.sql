declare

a tipo_alumno;
p persoa;
t tipo_direccion;
begin
	t := new tipo_direccion('rua','cidade',45);
	p := new persoa(40,'nome',t,'13/2/1991');
	a := new tipo_alumno(49,p,5,6,7);
	dbms_output.put_line(a.toStr);
end;
