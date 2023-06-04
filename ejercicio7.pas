program ejercicio7;
var
    cantidadDigitos: integer;
procedure contarCantidadYSuma (numeroEntero: integer);
var
    ultimoDigito: integer;
    sumaNumeros: integer;
begin
    while numeroEntero > 0 do begin;
        ultimoDigito:= numeroEntero mod 10; // divide el numero para sacar el resto, el resto seria el ultimo numero
        sumaNumeros:= sumaNumeros + ultimoDigito; // se suma el resultado de ultimoDigito y se guarda en sumaNumeros
        cantidadDigitos:= cantidadDigitos + 1;
        numeroEntero:= numeroEntero div 10; // se elimina el ultimo numero entero, ejemplo: 45 div 10 = 5, 4 div 10 = 4.
    end;
    writeln('la suma de los numeros es: ', sumaNumeros);
    writeln('la cantidad de digitos es: ', cantidadDigitos);
end;
var
    numero: integer;
begin
    write('ingrese un numero: ');
    read(numero);
    contarCantidadYSuma(numero);
end.
