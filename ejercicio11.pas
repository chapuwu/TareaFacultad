program ejercicio11;
// una secuencia de caracteres en la que no existe el carácter '$'
procedure A (letra: string);
var
    signoEncontrado: boolean;
begin
    signoEncontrado:= false;
    if (Pos('$', letra) <> 0) then signoEncontrado:= true;

    if (signoEncontrado) then writeln('no cumple el patron se encontro el $');

    if (not signoEncontrado) then writeln('si cumple el patron');
end;
procedure B (letra: string);
begin
    if (length(A) <> length(B))
end;
var
    caracter: string;
begin
    write('ingrese una secuencia de caracteres: ');
    readln(caracter);
    A (caracter);
    B (caracter);
end.

// FALTA TERMINAR EL EJERCICIO