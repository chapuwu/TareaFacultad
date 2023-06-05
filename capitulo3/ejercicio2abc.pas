program ejercicio2;
type
    fechasCasamientos = record
        numeroDia: integer;
        numeroMes: integer;
    end;
procedure leerFecha (var fecha: fechasCasamientos);
begin
    while true do begin
        write('ingrese el numero del dia (1 - 31): ');
        read(fecha.numeroDia);

        if ((fecha.numeroDia < 1) or (fecha.numeroDia > 31)) then begin
            writeln('se ingreso un dia incorrecto')
            Break;
        end

        write('ingrese el numero del mes (1 - 12): ');
        read(fecha.numeroMes);

        if ((fecha.numeroMes < 1) or (fecha.numeroMes > 12)) then begin
            writeln('se ingreso un mes incorrecto');
            Break;
        end

    end;
end;
var
    fechaInformar: fechasCasamientos;
begin
    leerFecha(fechaInformar);
    writeln('el dia del casamiento fue: ', fechaInformar.numeroDia, '-', fechaInformar.numeroMes, '-2019');
end.