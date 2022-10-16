numero = int(input("Ingresa un numero: ")) #Con esta linea de codigo le pedimos al usuario que ingrese un número.

def is_prime(numero): 
    resultado = True
    contador = 0
    i = 1

    while i < numero: #Mientras i sea menor que el número ingresado por el usuario el ciclo se repetira.
        if numero % i == 0: #Con esta condicion el programa ira comprobando si el resultado de una division da como residuo un cero.
            contador = contador + i #Si la condicion es correcta el contador ira incrementando. 
        i = i + 1

    if contador > 2: #Si el contador es mayor que 2 entonces el número ingresado no es primo.
        resultado = False
        print(resultado)
    else: #En caso contrario el número ingresado si es primo. 
        print(resultado)

is_prime(numero)