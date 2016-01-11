declare
	--ollo que vai o nome e despois o topo en pl/sql
	t1 tipo_direccion;
    t2 tipo_direccion;
    t3 tipo_direccion;
	p1 persoa;
	p2 persoa;

begin
	t1 := new tipo_direccion('rua de exemplo','cidade de exemplo',23);	
	t2 := new tipo_direccion('rua de exemplo2','cidade de exemplo2',232);	

	p1 := new persoa(1,'pepe',t1,'23/6/1891');
	p2 := new persoa(2,'xoan',t2,'23/4/1391');
	
	dbms_output.put_line('Datos da persoa un');
	dbms_output.put_line('codigo: ' || p1.get_codigo);
	dbms_output.put_line('nome: ' || p1.get_codigo);
	t3 :=  p1.get_direct;
	dbms_output.put_line('calle: ' || t3.get_calle);
	dbms_output.put_line('cidade: ' || t3.get_ciudad);
	dbms_output.put_line('codigo: ' || t3.get_codigo);
	dbms_output.put_line('numero: ' ||to_char(p1.get_fecha,'DD-MM-YYYY'));

	dbms_output.put_line('-------------------------------------');
	dbms_output.put_line('Datos da persoa dous');
	dbms_output.put_line('codigo: ' || p2.get_codigo);
	dbms_output.put_line('nome: ' || p2.get_codigo);
	t3 :=  p2.get_direct;
	dbms_output.put_line('calle: ' || t3.get_calle);
	dbms_output.put_line('cidade: ' || t3.get_ciudad);
	dbms_output.put_line('codigo: ' || t3.get_codigo);
	dbms_output.put_line('numero: ' ||to_char(p2.get_fecha,'DD-MM-YYYY'));

	if 	p1.get_codigo > p2.get_codigo then

		dbms_output.put_line('o un e maior');
	else
		
		dbms_output.put_line('o dous e maior');
	end if;


end;
--concatenamos coma en sql standar co ||
--set serveroutput on; para que amose cousas pola xanela
/
