N = ["<real>:=", "<entero>", "<fraccion>", "<entero-sin-signo>", "<entero-con-signo>", "<digito>"]

cadena = input("Ingrese el digito a convertir a BNF: -> ")
numero = float(cadena)

digitos = []
digitos_decimal = []
lista = lambda: ''.join(digitos)
lista2 = lambda: ''.join(digitos_decimal)

if '-' in cadena:
    if '.' in cadena:
        valor_entero = int(numero)
        parte_decimal = str(numero).split('.')[1] if '.' in str(numero) else '0'
        valor_decimal = str('.'+parte_decimal)

        length_valor_decimal = len(str(valor_decimal).split('.')[1])

        if valor_entero == 0:
            length_valor_entero = len(str(valor_entero))
            print(N[0] + N[1] + N[2])
            print(N[0] + N[4] + N[2])
            print(N[0] + '-' + N[3] + N[2])
            
            for x in range(length_valor_decimal):
                digitos_decimal.append(N[5])

            print(N[0] + '-' + N[5] + N[2])
            print(N[0] + '-' + N[5] + '.' + N[3])
            print(N[0] + '-' + N[5] + '.' + lista2())
            
        else:
            length_valor_entero = len(str(valor_entero).split('-')[1])
            print(N[0] + N[1] + N[2])
            print(N[0] + N[4] + N[2])
            print(N[0] + '-' + N[3] + N[2])
            for x in range(length_valor_entero):
                digitos.append(N[5])

            print(N[0] + '-' + lista() + N[2])
            print(N[0] + '-' + lista() + '.' + N[3])

            for x in range(length_valor_decimal):
                digitos_decimal.append(N[5])
            
            print(N[0] + '-' + lista() + '.' + lista2())
    else:
        valor_entero = int(numero)
        length_valor_entero = len(str(valor_entero).split('-')[1])

        print(N[0] + N[1])
        print(N[0] + N[4])
        print(N[0] + '-' + N[3])
        for x in range(length_valor_entero):
            digitos.append(N[5])

        print(N[0] + '-' + lista())

else:
    if '.' in cadena:
        valor_entero = int(numero)
        parte_decimal = str(numero).split('.')[1] if '.' in str(numero) else '0'
        valor_decimal = str('.'+parte_decimal)

        length_valor_decimal = len(str(valor_decimal).split('.')[1])

        if valor_entero == 0:
            length_valor_entero = len(str(valor_entero))
            print(N[0] + N[1] + N[2])
            print(N[0] + N[3] + N[2])
            
            for x in range(length_valor_decimal):
                digitos_decimal.append(N[5])

            print(N[0] + N[5] + N[2])
            print(N[0] + N[5] + '.' + N[3])
            print(N[0] + N[5] + '.' + lista2())
        
        else:
            length_valor_entero = len(str(valor_entero))
            print(N[0] + N[1] + N[2])
            print(N[0] + N[3] + N[2])
            for x in range(length_valor_entero):
                digitos.append(N[5])
            
            print(N[0] + lista() + N[2])
            print(N[0] + lista() + '.' + N[3])

            for x in range(length_valor_decimal):
                digitos_decimal.append(N[5])

            print(N[0] + lista() + '.' + lista2())
    
    else:
        valor_entero = int(numero)
        length_valor_entero = len(str(valor_entero))

        print(N[0] + N[3])
        for x in range(length_valor_entero):
            digitos.append(N[5])

        print(N[0] + lista())    