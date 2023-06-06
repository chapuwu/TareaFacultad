program ejercicio3;
type
    informacionDelColegio = record
        CUE: integer;
        nombreEstablecimiento: string;
        cantidadDocentes: integer;
        cantidadAlumnos: integer;
        localidad: string;
    end;
    listaColegios = array [1..2400] of informacionDelColegio;
var
    colegio: listaColegios;
procedure informacionEscuela;
var
    i: integer;
begin
    // leer 2400 escuelas primarias
    for i:= 1 to 2400 do begin
        write('codigo unico de establecimiento (CUE): ');
        readln(colegio[i].CUE);
        write('nombre del establecimiento: ');
        readln(colegio[i].nombreEstablecimiento);
        write('cantidad de docentes: ');
        readln(colegio[i].cantidadDocentes);
        write('cantidad de alumnos: ');
        readln(colegio[i].cantidadAlumnos);
        write('localidad: ');
        readln(colegio[i].localidad);
        writeln('---------------------------');
    end;
end;
procedure relacionDocenteAlumno;
var
    cociente: real;
    alumnosCantidadSuperior: integer;
    mejorCUE: informacionDelColegio;
    mejorCUE2: informacionDelColegio;
    mejorNombre: informacionDelColegio;
    mejorNombre2: informacionDelColegio;
    i: integer;
begin
    for i:= 1 to 2400 do begin
        // cantidad superior de alumnos sugerida por UNESCO
        if (colegio[i].cantidadAlumnos / colegio[i].cantidadDocentes > 23435) then alumnosCantidadSuperior:= alumnosCantidadSuperior + 1;

        // obtener las dos escuelas con mejor relacion de alumno por docente
        if (colegio[i].cantidadAlumnos / colegio[i].cantidadDocentes < 23435) then begin
            mejorCUE:= colegio[i]
            mejorNombre:= colegio[i]
        end

        if ()

        //obtener relacion docente-alumno
        cociente:= colegio[i].cantidadAlumnos / colegio[i].cantidadDocentes;
        writeln('la relacion docente-alumno es de: ', cociente:0:2);
        writeln('la cantidad de escuelas con relacion de alumno por docente superior es de: ', alumnosCantidadSuperior);
    end;
end;
begin
    informacionEscuela;
    relacionDocenteAlumno;
end.