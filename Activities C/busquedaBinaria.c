#include <conio.h>
#include <stdio.h>

void busquedaBinaria(int array[], int size, int clave)
{
	int i = 0;
	int f = size - 1;
	int medio, encontrado = -1;

	while (i <= f) {
		medio = i + (f - i) / 2;
		
		if (array[medio] == clave) {
			encontrado = medio;
			break;
		} else if (array[medio] < clave) {
			i = medio + 1;
		} else {
			f = medio - 1;
		}
	}

	if(encontrado != -1) {
		printf("Se encontro el numero %d en la posicion %d\n", clave, encontrado);
        } else {
        	printf("No se encontro el numero %d\n", clave);
        }
}

int main()
{
	int array[5] = {1, 2, 3, 4, 5};

	busquedaBinaria(array, 5, 5);
}
