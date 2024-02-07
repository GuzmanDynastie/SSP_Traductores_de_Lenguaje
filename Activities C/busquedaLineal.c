#include <conio.h>
#include <stdio.h>

void busquedaLineal(int array[], int size, int clave) 
{
	for (int i = 0; i < size; i++){
		if (array[i]==clave){
			printf("Se encontro el numero %d en la posicion %d\n", clave, i);
			return;
		} 
	}
	printf("No se encontro el numero %d\n", clave);
}

int main()
{
	int array[5] = {1, 2, 3, 4, 5};
	
	busquedaLineal(array, 5, 3);
}