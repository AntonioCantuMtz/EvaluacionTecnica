package calculator_class;

//Importamos la libreria que nos ayudara a ingresar datos por teclado
import java.util.Scanner;

public class Principal 
{
	public static void main(String[] args) 
	{
		Scanner entrada = new Scanner(System.in); //Primero instanciamos un objeto tipo scanner para poder ingresar datos por telcado 
		Calculator_class clase = new Calculator_class(); //Instanciamos un objeto de la clase Calculator_class para poder usar sus metodos
		int longitud;
		
		System.out.println("Ingresa la longitud del arreglo: ");
		longitud = entrada.nextInt(); //Aqui le pedimos al usuario que ingrese la longitud del arreglo (o la cantidad de datos que quiera ingresar)
		
		int arreglo[] = new int[longitud]; //Creamos el arreglo y su longitud sera lo que el usuario ingrese por teclado
		
		//Con este for el usuario ingresa por teclado uno por uno los numeros que desee
		for(int i = 0; i < arreglo.length; i++)
		{
			System.out.print("Ingresa un numero: ");
			arreglo[i] = entrada.nextInt();
		}
		
		clase.calculator_class(arreglo); //Le pasamos al metodo calculator_class el arreglo como parametro 
		clase.sum(); //Aqui solo mandamos a llamar el metodo sum el cual suma todos los numeros e imprime el resultado
	}
}