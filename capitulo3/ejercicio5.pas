program ejercicio5;
type
    auto = record
        marca: string;
        modelo: string;
        precio: integer;
    end;
    autoLista = array of auto;
procedure concesionaria;
var
    marcaNueva: auto;
    marcaActual: auto;
    autos: autoLista;
    i: integer;
    sumaNumeros: integer;
    promedioTotal: real;
begin
    i:= 1;
    sumaNumeros:= 0;
    while true do begin
        SetLength(autos, i);
        write('ingrese la marca del auto (ingresar "ZZZ" para terminar lectura): ');
        readln(autos[i].marca);
        marcaActual:= autos[i];
    
        if (marcaActual.marca <> 'ZZZ') then begin
            writeln('se termino la lectura');
            Break;
        end

        write('ingresar el modelo del auto: ');
        readln(autos[i].modelo);
        write('ingresar el precio del auto: ');
        readln(autos[i].precio);

        // ordenar elementos por Marcas
        if (marcaActual.marca <> marcaNueva.marca) then begin
            marcaNueva:= autos[i];
        end

        // verificar que la marca no haya cambiado
        if (marcaActual.marca = marcaNueva.marca) then begin 
            sumaNumeros:= sumaNumeros + autos[i]
        end

        // verificar que la marca cambio
        if (autos[i].marca <> marcaNueva.marca) then begin
            promedioTotal:= sumaNumeros / length(autos);
        end

        // maniana a hacelro vago hdp falta verificar que la marca cambio y sacar el promedio

        i:= i + 1;
    end;
end;
begin
    concesionaria;
end.