package calculator_class;

public class Calculator_class
{	
	private int numbers[]; //Creamos un atributo tipo array pero no lo inicializamos 
	
	public void calculator_class(int a[])
	{	
		numbers = new int[a.length]; //Aqui inicializamos el atributo de la clase cuya longitud sera la que reciba como parametro la clase calculator_class
		
		//Con este for le pasamos los datos recibidos como parametro al atributo de la clase (numbers[])
		for(int i = 0; i < a.length; i++)
		{
			numbers[i] = a[i];
		}
	}
	
	public void sum()
	{	
		int total = 0;
		//Con este for ya solo vamos sumando los numeros contenidos en numbers[] uno por uno y lo guardamos en la variable "total"
		for(int i = 0; i < numbers.length; i++)
		{
			total = total + numbers[i];
		}
		
		System.out.println("La suma total de todos los numeros introducidos en el arreglo es de: " + total); //Imprimimos el resultado
	}
}