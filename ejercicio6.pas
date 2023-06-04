program ejercicio6;
type
    Producto = record
        precio: integer;
        codigo: integer;
        tipo: string;
    end;
    ListaProductos = array [1..5] of Producto; // CAJA DE ARRAY DE OBJETOS
// RESUMEN: lo que hace es agarrar los dos codigos de los productos mas baratos. leer los comentarios para mas detalles
procedure productosBaratos (productos: ListaProductos); // al parametro se le da como valor el array.
var
    bajo1: Producto; // por que el nombre bajo?, porque el procedimiento trata de encontrar 2 precios mas bajos //
    bajo2: Producto; // variables que tiene de valor el objeto
    i: integer;
begin
    for i := 1 to 5 do begin
        if ((bajo1.precio = 0) or (productos[i].precio < bajo1.precio)) then begin // ingresa al objeto bajo1 y verifica que el precio sea igual a 0 o ingresa al array y verifica en el precio del objeto de adentro que sea menor al precio del objeto bajo1
            bajo1:= productos[i] // si se cumple la condicion, bajo1 remplaza el viejo objeto por el nuevo objeto que tiene el array
        end;
    end;
    for i:= 1 to 5 do begin
        if ((productos[i].codigo <> bajo1.codigo) and ((bajo2.precio = 0) or (productos[i].precio < bajo2.precio))) then begin // ingresa al array y se busca el objeto y en el objeto se ingresa para buscar el codigo que sea distinto del codigo del objeto bajo1 y (se verifica que en bajo2, el precio sea igual a 0 o se ingresa al array y se ingresa al objeto, se busca el precio y se verifica que sea menor que el precio de bajo2)
            bajo2:= productos[i] // si se cumple la condicion se remplaza el viejo objeto por el nuevo objeto que tiene el array
        end;
    end;
    writeln('el codigo de los dos productos mas baratos son: ', bajo1.codigo, ' y ', bajo2.codigo); // se imprime los codigos de los objetos
end;
// RESUMEN: lo que hace este procedimiento es devolver el codigo del pantalon mas caro. Leer los comentarios para mas detalles
procedure pantalonMasCaro (productos: ListaProductos);
var
    i: integer;
    masCaro: Producto;
begin
    for i := 1 to 5 do begin
        if ((productos[i].precio > masCaro.precio) and (productos[i].tipo = 'pantalon')) then // se ingresa al array y se busca en el objeto el precio y si es mayor el precio del objeto masCaro. Y se ingresa al array para verificar que en el objeto, el tipo sea igual a 'pantalon'
            masCaro:= productos[i] // en masCaro se remplaza el objeto viejo por el objeto nuevo que esta en el array
    end;
    writeln('el codigo del pantalon mas caro es: ', masCaro.codigo) // se ingresa al objeto y se busca el codigo para imprimirlo
end;
procedure precioPromedio (productos: ListaProductos);
var
    total: integer;
    i: integer;
begin
    for i := 1 to 5 do
        total:= total + productos[i].precio; // suma todos los elementos del array, y guarda el resultado en total
    writeln('el promedio es: ', total div 5); // para devolver el promedio, se divide el total entre la cantidad de precios en el array
end;
var
    productos: ListaProductos;
    i: integer;
begin
    // pide los datos para reemplazar con sus respectivos valores al objeto y lo agrega al array.
    for i := 1 to 5 do begin
        write('ingrese el precio: ');
        readln(productos[i].precio); // productos (variable) adentro tiene ListaProductos (array)
        write('ingrese el codigo: ');
        readln(productos[i].codigo);
        write('ingrese el tipo: ');
        readln(productos[i].tipo);
        writeln('-------------')
    end;
    productosBaratos(productos);
    pantalonMasCaro(productos);
    precioPromedio(productos);
end.