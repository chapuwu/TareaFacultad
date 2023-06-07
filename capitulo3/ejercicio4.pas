program ejercicio4;
type
    clienteTelefonia = record
        codigoCliente: integer;
        cantidadLineasAlNombreCliente: integer;
    end;
    lineaCliente = record
        numeroTelefono: integer;
        cantidadMinutosConsumidos: integer;
        cantidadMBConsumidosMes: integer;
    end;
    listaClientesTelefonia = array [1..9300] of clienteTelefonia;
    listaLineaCliente = array of lineaCliente;
var
    cliente: listaClientesTelefonia;
    informacionPorLineaCliente: lineaCliente;
    cantidadMBYMinutosTotal: listaLineaCliente;
procedure leerClientes;
var
    i: integer;
    i2: integer;
    contadorLineas: integer;
begin
    for i:= 1 to 2 do begin
        write('ingrese el codigo de cliente: ');
        read(cliente[i].codigoCliente);
        write('ingrese la cantidad de lineas que posee: ');
        read(cliente[i].cantidadLineasAlNombreCliente);

        contadorLineas:= cliente[i].cantidadLineasAlNombreCliente;

        SetLength(cantidadMBYMinutosTotal, contadorLineas); // esto establece un limite al array

        for i2:= 1 to contadorLineas do begin
            write('ingrese el numero de Telefono: ');
            read(cantidadMBYMinutosTotal[i].numeroTelefono);
            write('ingrese la cantidad de minutos consumidos en el mes: ');
            read(cantidadMBYMinutosTotal[i].cantidadMinutosConsumidos);
            write('ingrese la cantidad de MB consumidos en el mes: ');
            read(cantidadMBYMinutosTotal[i].cantidadMBConsumidosMes);
            writeln('------------------------------')
        end;
    end;
end;
// cada mb consumido cuesta 1,35
procedure cantidadTotalMinutosYMb;
var
    precioFinalMinutos: real;
    precioFinalMB: real;
    i: integer;
begin
    for i:= 1 to length(cantidadMBYMinutosTotal) do begin
        // multiplicar los minutos totales por 3,40
        precioFinalMinutos:= cantidadMBYMinutosTotal[i].cantidadMinutosConsumidos * 3.40;

        // multiplicar los MB totales por 1,35
        precioFinalMB:= cantidadMBYMinutosTotal[i].cantidadMBConsumidosMes * 1.35;
    end;
    writeln('la cantidad de minutos totales sale: ', precioFinalMinutos:0:2);
    writeln('la cantidad de MB totales sale: ', precioFinalMB:0:2);
end;
begin
    leerClientes;
    cantidadTotalMinutosYMb;
end.