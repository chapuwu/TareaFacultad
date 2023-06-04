program ejercicio9;
type
    AlumnosFacultad = record
        numeroInscripcion: integer;
        apellido: string;
        nombre: string;
    end;
    ListaAlumnosFacultad = array of AlumnosFacultad;
// Apellido de los dos alumnos con numero de inscripcion mas chico
procedure alumnosConNumeroChico (listaPersonas: ListaAlumnosFacultad);
var
    i: integer;
    nroInscripcionMenor: AlumnosFacultad;
    nroInscripcionMenor2: AlumnosFacultad;
begin
    for i:= 1 to High(listaPersonas) do begin
        if ((nroInscripcionMenor.numeroInscripcion = 0) or (listaPersonas[i].numeroInscripcion < nroInscripcionMenor.numeroInscripcion)) then begin
            nroInscripcionMenor:= listaPersonas[i];
        end
    end;
    for i:= 1 to High(listaPersonas) do begin
        if ((listaPersonas[i].apellido <> nroInscripcionMenor.apellido) and ((nroInscripcionMenor2.numeroInscripcion = 0) or (listaPersonas[i].numeroInscripcion < nroInscripcionMenor2.numeroInscripcion))) then begin
            nroInscripcionMenor2:= listaPersonas[i];
        end
    end;
    writeln('los dos apellidos con el numero de inscripcion mas bajo es: ', nroInscripcionMenor.apellido, ' y ', nroInscripcionMenor2.apellido);
end;
// Nombre de los dos alumnos con numero de inscripcion mas grande.
procedure alumnosConNumeroAlto (listaPersonas: ListaAlumnosFacultad);
var
    i: integer;
    nroInscripcionAlto: AlumnosFacultad;
    nroInscripcionAlto2: AlumnosFacultad;
begin
    for i:= 1 to High(listaPersonas) do begin
        if ((nroInscripcionAlto.numeroInscripcion = 0) or (listaPersonas[i].numeroInscripcion > nroInscripcionAlto.numeroInscripcion)) then begin
            nroInscripcionAlto:= listaPersonas[i];
        end
    end;
    for i:= 1 to High(listaPersonas) do begin
        if ((listaPersonas[i].nombre <> nroInscripcionAlto.nombre) and ((listaPersonas[i].numeroInscripcion = 0) or (listaPersonas[i].numeroInscripcion > nroInscripcionAlto2.numeroInscripcion))) then begin
            nroInscripcionAlto2:= listaPersonas[i];
        end
    end;
    writeln('los dos nombres con numero de inscripcion mas alto son: ', nroInscripcionAlto.nombre, ' y ', nroInscripcionAlto2.nombre);
end;
// Porcentaje de alumnos con numero de inscripcion par
procedure porcentajeNumerosPar (listaPersonas: ListaAlumnosFacultad);
var
    i: integer;
    porcentaje: real;
    cantidadNumeroPar: integer;
    cantidadAlumnos: integer;
begin
    for i:= 1 to High(listaPersonas) do begin
        if (listaPersonas[i].numeroInscripcion mod 2 = 0) then begin
            cantidadNumeroPar:= cantidadNumeroPar + 1;
        end;
        cantidadAlumnos:= i;
        porcentaje:= (cantidadNumeroPar / cantidadAlumnos) * 100;
    end;
    writeln('El porcentaje de alumnos con numero de inscripcion par es: ', porcentaje);
end;
var
    personas: ListaAlumnosFacultad;
    i: integer;
begin
    while true do begin
        write('ingrese el numero de inscripcion: ');
        readln(personas[i].numeroInscripcion);
        write('ingrese el apellido: ');
        readln(personas[i].apellido);
        write('ingrese el nombre: ');
        readln(personas[i].nombre);
        writeln('--------------------');
        if (personas[i].numeroInscripcion = 1200) then Break;
    end;
    alumnosConNumeroChico(personas);
    alumnosConNumeroAlto(personas);
    porcentajeNumerosPar(personas);
end.

// FALTA ARREGLAR EL PROGRAMA YA ESTA CASI TERMINADO 95%