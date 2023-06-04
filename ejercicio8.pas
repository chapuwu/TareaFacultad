program ejercicio8;
procedure sumaDigitosPares (numero: integer);
var
    suma: integer;
    digito: integer;
begin
    while numero > 0 do begin
        digito:= numero mod 10;
        if (digito mod 2 = 0) then begin
            suma:= suma + digito;
        end;
        numero:= numero div 10
    end;
    writeln('la suma de digito pares es: ', suma);
end;
procedure cantidadDigitosImpares (numero: integer);
var
    cantidadImpares: integer;
    digito: integer;
begin
    while numero > 0 do begin
        digito:= numero mod 10;
        if (digito mod 2 <> 0) then cantidadImpares:= cantidadImpares + 1;
        numero:= numero div 10;
        writeln('probando: ', numero);
    end;
    writeln('la cantidad de digitos impares es: ', cantidadImpares);
end;
var
    numero: integer;
begin
    while true do begin
        write('ingrese un numero: ');
        read(numero);
        if numero = 12345 then Break;
        sumaDigitosPares(numero);
        cantidadDigitosImpares(numero);
    end;
end.