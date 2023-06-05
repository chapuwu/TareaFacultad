program ejercicio10;
// A es una secuencia de sólo letras vocales
procedure A (letra: string);
var
    encontradoNoVocal: boolean;
begin
    encontradoNoVocal:= false;
    if ((Pos('a', letra) = 0) and (Pos('e', letra) = 0) and (Pos('i', letra) = 0) and (Pos('o', letra) = 0) and (Pos('u', letra) = 0)) then begin
        encontradoNoVocal:= true;
    end;
    if (encontradoNoVocal) then begin
        writeln('nooo, no usaste vocales');
    end
    else
    begin
        writeln('bien ahi, usaste vocales');
    end;
end;
// caracter especial despues del modulo A;
procedure caracterEspecial (letra: string);
var
    signoNoEncontrado: boolean;
begin
    signoNoEncontrado:= false;
    if (Pos('$', letra) = 0) then begin
        signoNoEncontrado:= true;
    end;
    if (signoNoEncontrado) then begin
        writeln('no se encontro $ en la cadena');
    end
    else
    begin
        writeln('se encontro $ en la cadena');
    end

end;
// secuencia de sólo caracteres alfabéticos sin letras vocales
procedure B (letra: string);
var
    letraAlfabetoNoEncontrada: boolean;
    i: integer;
begin
    letraAlfabetoNoEncontrada:= false;
    for i:= 1 to length(letra) do begin
        if ((Pos('a', letra) <> 0) and (Pos('e', letra) <> 0) and (Pos('i', letra) <> 0) and (Pos('o', letra) <> 0) and (Pos('u', letra) <> 0)) then begin
            letraAlfabetoNoEncontrada:= true;
        end
    end;

    if (letraAlfabetoNoEncontrada) then writeln('no se encontro una letra del alfabeto');

    if (not letraAlfabetoNoEncontrada) then writeln('se encontro una letra del alfabeto')
end;
procedure caracterSigno2 (letra: string);
var
    signoNoEncontrado: boolean;
begin
    signoNoEncontrado:= false;
    if (Pos('#', letra) = 0) then signoNoEncontrado:= true;

    if (signoNoEncontrado) then writeln('no se encontro el signo #');

    if (not signoNoEncontrado) then writeln('se encontro el signo #');
end;
var
    caracter: string;
begin
    write('ingrese una secuencia de caracteres: ');
    readln(caracter);
    A (caracter);
    caracterEspecial (caracter);
    B (caracter);
    caracterSigno2 (caracter);
end.