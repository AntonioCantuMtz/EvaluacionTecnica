numero = int(input("Ingresa un numero: "))

def is_prime(numero):
    resultado = True
    contador = 0
    i = 1

    while i < numero:
        if numero % i == 0:
            contador = contador + i
        i = i + 1

    if contador > 2:
        resultado = False
        print(resultado)
    else:
        print(resultado)

is_prime(numero)