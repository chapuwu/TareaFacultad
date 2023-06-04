program ejercicio7B;
var
    sumaNumeros: integer;
procedure contarCantidadYSuma (numero: integer);
var
    cantidadDigitos: integer;
    digito: integer;
begin
    sumaNumeros:= 0;
    while numero > 0 do begin
        digito:= numero mod 10;
        sumaNumeros:= sumaNumeros + digito;
        cantidadDigitos:= cantidadDigitos + 1;
        numero:= numero div 10;
    end;
    writeln('la suma de los numeros es: ', sumaNumeros);
    writeln('la cantidad de digitos es: ', cantidadDigitos);
end;
var
    numeroEntero: integer;
begin
    while true do begin
        write('ingrese un numero: ');
        read(numeroEntero);
        contarCantidadYSuma(numeroEntero);

        if (sumaNumeros = 10) then begin
            Break;
        end
    end;
end.