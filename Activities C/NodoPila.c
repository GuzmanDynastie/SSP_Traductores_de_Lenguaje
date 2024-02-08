#include <stdio.h>
#include <stdlib.h>

struct NodoPila
{
	int dato;
	struct NodoPila* siguiente;
};

struct NodoPila* crearNodoPila(int dato)
{
	struct NodoPila* nuevoNodo = (struct NodoPila*)malloc(sizeof(struct NodoPila));	
	nuevoNodo->dato = dato;
	nuevoNodo->siguiente = NULL;
	return nuevoNodo;
}

void push(struct NodoPila** top, int dato)
{
	struct NodoPila* nuevoNodo = crearNodoPila(dato);
	nuevoNodo->siguiente = *top;
	*top = nuevoNodo;
}

int pop(struct NodoPila** top)
{
	if (*top == NULL) {
		printf("La nueva pila esta vacia\n");
		return -1;
	}

	int dato = (*top)->dato;
	struct NodoPila* temp = *top;
	*top = (*top)->siguiente;
	free(temp);

	return dato;
}

int main ()
{
	struct NodoPila* top = NULL;
	
	push(&top, 10);
	push(&top, 20);
	push(&top, 30);

	printf("Elementos de la pila: %d, %d, %d\n", pop(&top), pop(&top), pop(&top));

	return 0;
}