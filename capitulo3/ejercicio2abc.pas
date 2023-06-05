program ejercicio2;
type
    fechasCasamientos = record
        numeroDia: integer;
        numeroMes: integer;
        numeroAnio: integer;
    end;
procedure leerFecha (var fecha: fechasCasamientos);
var
    casamientosEneroFebreroMarzo: integer;
    casamientosPrimerosDiezDias: integer;
begin
    while true do begin
        write('ingrese el numero del dia (1 - 31): ');
        read(fecha.numeroDia);

        if ((fecha.numeroDia < 1) or (fecha.numeroDia > 31)) then begin
            writeln('se ingreso un dia incorrecto');
            Break;
        end;

        write('ingrese el numero del mes (1 - 12): ');
        read(fecha.numeroMes);

        if ((fecha.numeroMes < 1) or (fecha.numeroMes > 12)) then begin
            writeln('se ingreso un mes incorrecto');
            Break;
        end;

        write('ingrese el anio (solo 2019): ');
        read(fecha.numeroAnio);

        writeln('el dia del casamiento fue: ', fecha.numeroDia, '-', fecha.numeroMes, '-', fecha.numeroAnio);

        writeln('----------------------------');

        if ((fecha.numeroAnio < 2019) or (fecha.numeroAnio > 2019)) then begin
            writeln('error, solo existen casamientos del anio 2019');
            Break;
        end;


        if ((fecha.numeroMes = 1) or (fecha.numeroMes = 2) or (fecha.numeroMes = 3)) then begin
            casamientosEneroFebreroMarzo:= casamientosEneroFebreroMarzo + 1;
        end;

        if (fecha.numeroDia <= 10) then begin
            casamientosPrimerosDiezDias:= casamientosPrimerosDiezDias + 1;
        end;

    end;
    writeln ('la cantidad de casamientos que hubo en enero, febrero y marzo es: ', casamientosEneroFebreroMarzo);
    writeln ('la cantidad de casamientos de los primeros diez dias de cada mes es: ', casamientosPrimerosDiezDias);
end;
var
    fechaInformar: fechasCasamientos;
begin
    leerFecha(fechaInformar);
end.