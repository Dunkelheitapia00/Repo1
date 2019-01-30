Proceso Monedero
	Definir money Como Entero;
	Definir pro1,pro2 Como Entero;
	Definir noprod1,noprod2 Como Entero;
	Definir siprod1,siprod2 Como Entero;
	Definir cuen1,cuen2 Como Real;
	Definir cost1,cost2,paga,vuelto Como Real;
	Definir cont1,cont2 Como Real;
	Definir presio1,presio2,presio3 Como Real;
	Definir punt1,punt2,puntos Como Entero;
	Definir dinacum Como Real;
	Definir comb,desc,disp,res Como Real;
	definir pago como entero;
	Definir acum,cambio,pagodif,efectivo,diferencia Como Real;
	Escribir '#Bienvenido a la farmacia';
	Escribir '___________________________________________________________________________________________________________________________';
	Escribir '(Contamos con monedero electronico para nuestros clientes y bonificacion de puntos en productos participantes)';
	Escribir '__________________________________________________________________________________________________________________________________';
	Escribir 'Productos:';
	Escribir '__________________________________________________________________________________________________';
	Escribir 'Promocion(No aplica)';
	Escribir '________________________________________________________________';
	Escribir 'Cantidad de productos:';
	Escribir 'Salbutamol ($250):';
	Leer pro1;
	cuen1 <- pro1*250;
	Escribir 'Precio:$',cuen1;
	Escribir '_______________________________________________';
	Escribir 'Genoprasol ($190):';
	Leer pro2;
	cuen2 <- pro2*190;
	Escribir 'Precio:$',cuen2;
	Escribir '_______________________________________________________';
	presio1 <- cuen1+cuen2;
	Escribir 'Cuenta con monedero electronico: (1)SI (2)NO';
	Leer money;
	Si money==1 Entonces
		Escribir '______________________________________________________________________';
		Escribir 'Felicidades, cuenta con nuestra promocion';
		Escribir '_______________________________________________________________________';
		Escribir '(Por cada producto participante se le abonara a su monedero cierta cantidad de puntos que equivale a dinero electronico)';
		Escribir '(1 punto por cada $10 en compras por unidad de producto)';
		Escribir '(Cada punto equivale a $7 mx)';
		Escribir '________________________________________________________________________________________________________________________________________________________';
		Escribir 'Promocion (Aplica)';
		Escribir '________________________________________________';
		Escribir 'Cantidad de productos:';
		Escribir 'Paracetamol ($100):';
		Leer siprod1;
		cont1 <- siprod1*100;
		punt1 <- (cont1/10)*1;
		Escribir 'Precio:$',cont1;
		Escribir '_________________________________________________';
		Escribir 'Ibuprofeno ($200):';
		Leer siprod2;
		cont2 <- siprod2*200;
		punt2 <- (cont2/10)*1;
		Escribir 'Precio:$',cont2;
		Escribir '________________________________________';
		presio3 <- cont1+cont2;
		puntos <- punt1+punt2;
		dinacum <- puntos*7;
		Escribir 'Puntos acumulados:',puntos;
		acum <- presio3+presio1;
		Escribir 'Dinero electronico disponible:$',dinacum;
		Si dinacum>acum Entonces
			Escribir 'El dinero electronico es suficiente';
			Escribir '____________________________________________';
			Escribir 'Total a pagar:$',acum;
			res <- dinacum-acum;
			desc <- res;
			Escribir '______________________________________________________________________________________';
			Escribir 'Se han cobrado los productos exitosamente';
			Escribir 'Cambio:$',res;
			Escribir '____________________________________________';
		SiNo
			Escribir "_____________________________________________________________________________";
			Escribir 'El dinero electronico no es suficiente para cobrarlo de la tarjeta';
			Escribir "___________________________________________________________________________";
			Escribir 'Total a pagar:',acum;
			Escribir "_____________________________________________________________________________________";
			Escribir 'Desea pagar el total en efectivo? o usar su credito del monedero y pagar el resto en efectivo?';
			Escribir "_____________________________________________________________________________";
			Escribir '(1)pagar total en efectivo, (2)usar su monedero y dar la diferencia';
			Leer pago;
			Si pago>0 Y pago<=2 Entonces
				Si pago==1 Entonces
					Escribir 'Dinero en efectivo a pagar:$',acum;
					Leer efectivo;
					Si efectivo>=acum Entonces
						cambio <- (acum-efectivo)*(-1);
						Escribir 'Su pago fue exitoso';
						Escribir 'su cambio es $',cambio;
						Escribir 'Saldo disponible electronico:$',dinacum;
					SiNo
						Si efectivo<acum Entonces
						FinSi
						Escribir 'Su pago es insuficiente';
						Escribir 'Su pago no ha sido procesado(Intentelo de nuevo)';
					FinSi
				SiNo
					diferencia <- acum-dinacum;
					Escribir 'diferencia a pagar $',diferencia;
					Escribir 'ingrese la cantidad indicada o superior';
					Leer pagodif;
					Si pagodif>=diferencia Entonces
						cambio <- pagodif-diferencia;
						Escribir 'su pago fue exitoso';
						Escribir 'su cambio es $',cambio;
						Escribir 'Su dinero electronico es $0';
					SiNo
						Si pagodif<diferencia Entonces
							Escribir 'su pago es insuficiente';
							Escribir 'Su pago no ha sido procesado (Intentelo de nuevo)';
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir '________________________________________________________________________________________';
	SiNo
		Escribir 'Aun no cuenta con la promocion de puntos';
		Escribir '__________________________________________________________________';
		Escribir 'Promocion (No aplica)';
		Escribir 'Cantidad de productos:';
		Escribir 'Paracetamol ($100):';
		Leer noprod1;
		cost1 <- noprod1*100;
		Escribir 'Precio:$',cost1;
		Escribir '_______________________________';
		Escribir 'Ibuprofeno ($200):';
		Leer noprod2;
		cost2 <- noprod2*200;
		Escribir 'Precio:$',cost2;
		Escribir '_____________________________________________________________________';
		presio2 <- presio1+cost1+cost2;
		Escribir 'Total a pagar:$',presio2;
		Leer paga;
		Si paga>=presio2 Entonces
			vuelto = (presio2-paga)*(-1);
			Escribir "Cambio: $",vuelto;
			Escribir 'Pago exitoso';
		SiNo
			Si paga<presio2 Entonces
			FinSi
			Escribir "Su pago es insuficiente";
			Escribir "Su pago no ha sido procesado (Intentelo de nuevo)";
		FinSi
	FinSi
FinProceso

