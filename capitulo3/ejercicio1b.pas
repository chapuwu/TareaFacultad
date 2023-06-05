program Registros;
type
    str20 = string[20];
    alumno = record
        codigo: integer;
        nombre: str20;
        promedio: real;
    end;
procedure leer(var alu: alumno);
var
    cantidadAlumnosLeidos: integer;
    alumnoPromedioAlto: alumno;
begin
    alumnoPromedioAlto.promedio:= 0;
    while true do begin
        write('Ingrese el código del alumno (la lectura termina con el numero 0): ');
        readln(alu.codigo);

        if (alu.codigo = 0) then Break;

        if (alu.codigo <> 0) then begin
            write('Ingrese el nombre del alumno: ');
            readln(alu.nombre);
            write('Ingrese el promedio del alumno: ');
            readln(alu.promedio);
        end;
        // informar el nombre del alumno con mejor promedio
        if (alu.promedio > alumnoPromedioAlto.promedio) then begin
            alumnoPromedioAlto:= alu;
        end;

        cantidadAlumnosLeidos:= cantidadAlumnosLeidos + 1;
    end;
    writeln('la cantidad de alumnos leidos es: ', cantidadAlumnosLeidos);
    writeln('el nombre del alumno con mejor promedio es: ', alumnoPromedioAlto.nombre);
end;
{ declaración de variables del programa principal }
var
    a: alumno;
{ cuerpo del programa principal }
begin
    leer (a)
end.