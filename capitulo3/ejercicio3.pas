program ejercicio3;
type
    informacionDelColegio = record
        CUE: integer;
        nombreEstablecimiento: string;
        cantidadDocentes: integer;
        cantidadAlumnos: integer;
        localidad: string;
    end;
var
    colegio: informacionDelColegio;
procedure informacionEscuela (infoColegio: informacionDelColegio);
begin
    write('codigo unico de establecimiento (CUE): ');
    readln(infoColegio.CUE);
    write('nombre del establecimiento: ');
    readln(infoColegio.nombreEstablecimiento);
    write('cantidad de docentes: ');
    readln(infoColegio.cantidadDocentes);
    write('cantidad de alumnos: ');
    readln(infoColegio.cantidadAlumnos);
    write('localidad: ');
    readln(infoColegio.localidad);

    colegio:= infoColegio;
end;
procedure relacionDocenteAlumno ();
var
    cociente: integer;
begin
    //obtener relacion docente-alumno
    cociente:= colegio.cantidadAlumnos div colegio.cantidadDocentes;
    writeln('la relacion docente-alumno es de: ', cociente)
end;
var
    colegioVariableLocal: informacionDelColegio;
begin
    informacionEscuela(colegioVariableLocal);
    relacionDocenteAlumno();
end.