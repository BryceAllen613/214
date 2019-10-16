/* TemperatureTester.java tests the module/aggregate type Temperature
 * cs 214
 * Calvin College
 * Bryce Allen
 * 4/6/18
 */
import java.util.Scanner;
public class TemperatureTester
{
    public static void main(String[] args)
    {
	Temperature baseTemp = new Temperature(0.0, 'F');
	Temperature limitTemp = new Temperature(100.0, 'C');
	double stepValue = 2.5;

	while( !(baseTemp.equals(limitTemp)) )
        {
	    baseTemp.toCelsius(baseTemp.getDegrees());
	    System.out.print(baseTemp.printTemperature() + " ");
	    baseTemp.toKelvin(baseTemp.getDegrees());
	    System.out.print(baseTemp.printTemperature() + " ");
	    baseTemp.toFahrenheit(baseTemp.getDegrees());
	    System.out.print(baseTemp.printTemperature() + " ");
	    baseTemp = baseTemp.raise(baseTemp, stepValue);
	    System.out.println("");
	}

       	Temperature baseTemp1 = new Temperature(0.0, 'K');
	Temperature limitTemp1 = new Temperature(212.0, 'F');
	double stepValue1 = 20.0;

	while( !(baseTemp1.equals(limitTemp)) )
        {
	    baseTemp1.toCelsius(baseTemp1.getDegrees());
	    System.out.print(baseTemp1.printTemperature() + " ");
	    baseTemp1.toKelvin(baseTemp1.getDegrees());
	    System.out.print(baseTemp1.printTemperature() + " ");
	    baseTemp1.toFahrenheit(baseTemp1.getDegrees());
	    System.out.print(baseTemp1.printTemperature() + " ");
	    baseTemp1 = baseTemp1.raise(baseTemp1, stepValue1);
	    System.out.println("");
	}
    }
}
