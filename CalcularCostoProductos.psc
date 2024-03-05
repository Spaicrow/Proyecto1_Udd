Algoritmo CalcularCostoProductos
	
    // Declarar variables
definir precioOriginal, descuento, iva, costoTotal, cantidad, costoProducto, peso, costoEnvio, precioConDescuento, precioConIva, precioDescuentoCantidad, costoFinal como Real;
definir destinoEnvio como Cadena;
definir numProductos, i como Entero;
	
    // Leer el número de productos
    Escribir "Ingrese el número de productos a comprar:";
    Leer numProductos;
	
    // Inicializar el costo total
    costoTotal <- 0;
	
    // Bucle para calcular el costo de cada producto
    para i <- 1 hasta numProductos hacer
        Escribir "Producto ", i;
		
        // Leer los datos del producto y cliente
        Escribir "Ingrese el precio original del producto:";
        Leer precioOriginal;
		
        Escribir "Ingrese el cupón de descuento (en porcentaje):";
        Leer descuento;
		
        Escribir "Ingrese el impuesto al valor agregado (IVA) en porcentaje:";
        Leer iva;
		
        Escribir "Ingrese la cantidad de productos:";
        Leer cantidad;
		
        Escribir "Ingrese el peso del paquete en kg:";
        Leer peso;
		
        Escribir "Ingrese el destino del envío:";
        Leer destinoEnvio;
		
        // Aplicar descuento si es aplicable
        si descuento > 0 entonces
            precioConDescuento <- precioOriginal-(precioOriginal * descuento)/100;
        sino
            precioConDescuento <- precioOriginal;
        finSi
		
        // Aplicar IVA
        precioConIva <- precioConDescuento + (precioConDescuento *iva)/ 100;
		
        // Aplicar descuento por cantidad
        precioDescuentoCantidad <- precioConIva;
        si cantidad > 1 entonces
            precioDescuentoCantidad <- precioConIva * 0.95;
        finSi
		
        // Calcular costo de envío
        costoEnvio <- 10 + 2 * peso;
		
        // Calcular costo final del producto
        costoProducto <- (precioDescuentoCantidad * cantidad) + costoEnvio;
		
        // Sumar al costo total
        costoTotal <- costoTotal + costoProducto;
		
        // Mostrar el costo final y desglosar componentes
        Escribir "Costo final del producto ", i, ": $", costoProducto;
        Escribir "Desglose:";
        Escribir "  Descuento: $", precioOriginal - precioConDescuento;
        Escribir "  Impuestos: $", precioConIva - precioConDescuento;
        Escribir "  Descuento por cantidad: $", precioConIva - precioDescuentoCantidad;
        Escribir "  Costo de envío: $", costoEnvio;
        Escribir "";
    finPara
	
    // Mostrar el costo total de todos los productos
    Escribir "Costo total de todos los productos: $", costoTotal;
	
FinAlgoritmo
