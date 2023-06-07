program ejercicio5;
type
    modeloAuto = record
        marca: string;
        modelo: string;
        precio: string;
    end;
    listaModeloAuto = array of modeloAuto;
var
    precioPromedioMarca: integer;
    sumaPrecios: integer;
    i: integer;
    contadorFor: integer;
    modelosAutos: listaModeloAuto;
    marcaCara: modeloAuto;
    modeloCaro: modeloAuto;
    precioMax: integer;
begin
    precioMax: 0;
    for i:= 1 to contadorFor do begin
        write('ingrese la marca del auto: ');
        readln(modelosAutos[i].marca)

        if (marca = 'ZZZ') then Break;

        write('ingrese el modelo del auto: ');
        readln(modelosAutos[i].modelo)
        write('ingrese el precio del auto: ');
        readln(modelosAutos[i].precio);

        contadorFor:= contadorFor + 1;

        SetLength(modelosAutos, contadorFor);

        // precio promedio por marca
        sumaPrecios:= sumaPrecios + modelosAutos[i].precio;
        precioPromedioMarca:= sumaPrecios div length(sumaPrecios);

        // Marca y modelo del auto más caro
        if (modelosAutos[i].precio > precioMax) then begin
            marcaCara:= modelosAutos[i];
            modeloCaro:= modeloAutos[i];
        end
    end;
end.

// ME TRABE EN LA PARTE DONDE TENGO QUE CREAR UNA LISTA POR CADA MARCA HAY QUE HACERLO Y TERMINO EL EJERCICIO