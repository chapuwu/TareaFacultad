program ejercicio10;
// A es una secuencia de sólo letras vocales
procedure A (letra: string);
var
    i: integer;
    esVocal: boolean;
begin
    for i:= 1 to length(letra) do begin
        if ((letra[i] <> 'a') or (letra[i] <> 'e') or (letra[i] <> 'i') or (letra[i] <> 'o') or (letra[i] <> 'u')) then begin
            esVocal:= false
        end
        else
            esVocal:= true;
    end;
    if (esVocal = true) then begin
        writeln('bien ahi usaste vocales');
    end
    else
    begin
        writeln('nooo, no usaste vocales');
    end;
end;
var
    caracter: string;
begin
    write('ingrese un caracter: ');
    readln(caracter);
    A (caracter);
end.