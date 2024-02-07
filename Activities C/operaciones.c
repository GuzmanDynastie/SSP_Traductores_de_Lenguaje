#include <conio.h>
#include <stdio.h>

int main() 
{
	float value1, value2, suma, resta, multiplicacion, division;

	printf("Ingresa una cifra: ");
	scanf("%f", &value1);

	printf("Ingresa una segunda cifra: ");
	scanf("%f", &value2);

	suma = value1 + value2;
	resta = value1 - value2;
	multiplicacion = value1 * value2;
	division = value1 / value2;

	printf("\nResultado de la suma %.2f \n", suma);
	printf("Resultado de la resta %.2f \n", resta);
	printf("Resultado de la multiplicacion %.2f \n", multiplicacion);
	printf("Resultado de la division %.2f \n", division);

	getch();
	return 0;
}