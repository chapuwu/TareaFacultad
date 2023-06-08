program ejercicio5;
type
    auto = record
        marca: string;
        modelo: string;
        precio: integer;
    end;
    listaAutos = array of auto;
var
    autos: listaAutos;
procedure leerAutos;
var
    marca: string;
    i: integer;
    limiteArray: integer;
    verificarZZZ: string; // esto es para verificar si la marca es igual a ZZZ
begin
    marca:= '';
    i:= 1;
    verificarZZZ:= '';
    limiteArray:= 1;
    while i <= limiteArray do begin
        SetLength(autos, limiteArray);

        limiteArray:= limiteArray + 1;

        write('ingrese la marca del auto: ');
        readln(verificarZZZ);

        if (verificarZZZ = 'ZZZ') then Break;
        
        if (verificarZZZ <> 'ZZZ') then autos[i].marca:= verificarZZZ; // esto es para arreglar el error de que si ingresabas ZZZ se guardaba

        // logica de "una lista por marca"
        if (autos[i].marca <> marca) then begin // si la marca es distinta guardarla en la variable
            marca:= autos[i].marca;
        end;

        if (autos[i].marca = marca) then begin // verificar que la marca siga siendo igual y no cambio
                write('ingrese el modelo del auto: ');
                readln(autos[i].modelo);

                write('ingrese el precio del auto: ');
                readln(autos[i].precio);
                writeln('-------------------------------') // separador
        end;
    end;
end;
procedure precioPromedioMarca;
var
    marca: string;
    // promedio: real;
    i: integer;
    sumaPrecios: integer;
begin
    sumaPrecios:= 0;
    marca:= '';
    for i:= 1 to length(autos) do begin
        if (autos[i].marca <> marca) then begin // verificar si es distinto a la marca (siempre va a ser distinto a lo primero)
            marca:= autos[i].marca;
        end;

        if (autos[i].marca = marca) then begin // verificar que la marca no cambio y sea igual
            // logica del promedio
            sumaPrecios:= sumaPrecios + autos[i].precio;
        end;
    end;
    writeln('la suma de todos los precios es de: ', sumaPrecios);
end;
begin
    leerAutos;
    precioPromedioMarca;
end.

// MISMO ERROR, LA SUMA SIEMPRE ES 0 FALTA ARREGLARLO