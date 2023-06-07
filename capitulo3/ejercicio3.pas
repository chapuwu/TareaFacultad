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
    escuelasSuperiores: integer;
    cocienteRelacion: real;
    i: integer;
    mejorCUE: informacionDelColegio;
    mejorCUE2: informacionDelColegio;
    nombreColegio: informacionDelColegio;
    nombreColegio2: informacionDelColegio;
begin
    escuelasSuperiores:= 0;
    for i:= 1 to 2400 do begin
        // cociente de relacion de alumnos por docente
        cocienteRelacion:= colegio[i].cantidadAlumnos / colegio[i].cantidadDocentes;
        // Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por UNESCO
        if ((colegio[i].localidad = 'la plata') and (colegio[i].cantidadAlumnos / colegio[i].cantidadDocentes > 23.435)) then begin
            escuelasSuperiores:= escuelasSuperiores + 1;
        end;

        // CUE y nombre de las dos escuelas con mejor relación entre docentes y alumnos
        if (colegio[i].cantidadAlumnos / colegio[i].cantidadDocentes < 23.435) then begin
            mejorCUE:= colegio[i];
            nombreColegio:= colegio[i];
        end;
        // obtener el segundo colegio
        if ((colegio[i].cantidadAlumnos / colegio[i].cantidadDocentes < 23.435) and (colegio[i].nombreEstablecimiento <> nombreColegio.nombreEstablecimiento)) then begin
            mejorCUE2:= colegio[i];
            nombreColegio2:= colegio[i];
        end
    end;
end;
begin
    informacionEscuela;
    relacionDocenteAlumno;
end.