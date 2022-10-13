#Este programa esta incompleto.
listaDeNumeros = [10, 10, 10, 10, 10]

def sum(listaDeNumeros):
    total = 0;

    for i in listaDeNumeros:
        total = total + listaDeNumeros[i]

    return print("La suma de todos los numeros ingresados es: ", str(total))

sum(listaDeNumeros)