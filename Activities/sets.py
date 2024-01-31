def set_values(size):
    s = set()
    for x in range(size):
        while True:
            try:
                value = int(input(f'Ingrese el {x+1} valor: -> '))
                s.add(value)
                break
            except ValueError:
                print("Caracter invalido\n")
    return s

def show_menu():
    print("1. Union")
    print("2. Interseccion")
    print("0. Salir")
    while True:
        try:
            option = int(input("\nSelecciona una opcion: -> "))
            break
        except ValueError:
            print("Caracter invalido\n")
    return option

def input_number_of_sets():
    while True:
        try:
            print(" --- Ingrese por lo menos 2 conjuntos ---")      
            num_sets = int(input("¿Cuántos conjuntos va a consultar? -> "))
            if num_sets >= 2:
                break
            else:
                print("Por favor, ingrese al menos 2 conjuntos.\n")
        except ValueError:
            print("Caracter invalido\n")

def input_size_of_set():
    while True:
        try:
            size = int(input("¿Cuantos valores quiere agregar? -> "))
            break
        except ValueError:
            print("Caracter invalido\n")


sets = []
num_sets = input_number_of_sets()
size = input_size_of_set()


for x in range(num_sets):
    s = set_values(size)
    sets.append(s)

print("\n -------------------------------- \n")

for idx, s in enumerate(sets, 1):
    print(f'Conjunto {idx}: {s}')

print("\n -------------------------------- \n")

options = {
    1: lambda: print(sets[0].union(*sets[1:]), "-------------> UNION \n"),
    2: lambda: print(sets[0].intersection(*sets[1:]), "-------------> INTERSECCION \n"),
    0: exit
}

while True:
    option = show_menu()
    print("\n -------------------------------- \n")
    options.get(option, exit)()

    if option == 0:
        break