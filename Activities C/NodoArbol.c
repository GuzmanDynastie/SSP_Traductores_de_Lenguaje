#include <stdio.h>
#include <stdlib.h>

struct NodoArbol 
{
	int dato;
	struct NodoArbol* izquierda;
	struct NodoArbol* derecha;
};

struct NodoArbol* crearNodo(int dato) 
{
	struct NodoArbol* nuevoNodo = (struct NodoArbol*)malloc(sizeof(struct NodoArbol));
	nuevoNodo->dato = dato;
	nuevoNodo->izquierda = NULL;
	nuevoNodo->derecha = NULL;
	return nuevoNodo;
}

void imprimirInOrden(struct NodoArbol* nodo) 
{
	if (nodo != NULL) {
		imprimirInOrden(nodo->izquierda);
		printf("%d ", nodo->dato);
		imprimirInOrden(nodo->derecha);
	}
}

int main() 
{
	struct NodoArbol* raiz = crearNodo(10);
	raiz->izquierda = crearNodo(5);
	raiz->derecha = crearNodo(15);

	printf("Arbol creado con raiz %d\n", raiz->dato);
	printf("Estructura del arbol inOrden: ");
	imprimirInOrden(raiz);
	printf("\n");

	return 0;
}