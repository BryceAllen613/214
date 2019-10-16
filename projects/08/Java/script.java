Script started on Thu 12 Apr 2018 06:05:50 PM EDT
bda5@augusta:~/214/projects/08/Java$ cat Temperature.java
/* Temperature.java represents aggregate type temperature
 * cs 214
 * Calvin College
 * Bryce Allen
 * 4/6/18
 */

public class Temperature
{
    private double degrees;
    private char scale;

    public Temperature(){}

    /* Explicit constructor
     * params d and s initialize degrees and scale
     */
    public Temperature(double d, char s)
    {
	this.degrees = d;
	this.scale = s;
    }
    /* tests if the temperature is valid
     * @return true if valid false otherwise
     * @params d and s representing degrees and scale respectively
     */
    private boolean isValid(double d, char s)
    {
	if( ( s == 'f' || s== 'F' || s == 'c' || s == 'C') )
	    return true;
	if( (s == 'k' || s == 'K') && (d >= 0) )
	    return true;
	else
	    return false;
    }

    /* returns degrees
     * @return degrees
     */
    public double getDegrees() { return degrees; }
    
    /* returns scale
     * @return scale
     */
    public char getScale() { return scale; }

    /* returns a double representing the temperature as fahrenheit
     * @param t the temperature to be converted
     * @return the temperature as a new scale
     */
    public double toFahrenheit(double t)
    {
	scale = 'F';
	if( scale == 'f' || scale == 'F' )
	    { return t; }
	else if( scale == 'c' || scale == 'C' )
	    { return ((t*9)/5.0) + 32; }
	else {
	    return ((9.0/5.0)*(t-273)) +32;
	}  
    }
    
    /* returns a double representing the temperature as celsius
     * @param t the temperature to be converted
     * @return the temperature as a new scale
     */
    public double toCelsius(double t)
    {
	scale = 'C';
	if( scale == 'c' || scale == 'C' )
	    { return t; }
	else if( scale == 'f' || scale == 'F' )
	    { return ((5.0/9.0)*(t-32)); }
	else
	    { return t-273; }
    }
    
    /* returns a double representing the temperature as Kelvin
     * @param t the temperature to be converted
     * @return the temperature as a new scale
     */
    public double toKelvin(double t)
    {
	scale = 'K';
	if( scale == 'k' || scale == 'K' )
	    { return t; }
	else if( scale == 'c' || scale == 'C' )
	    { return t+273; }
	else
	    { return ((5.0/9.0)*(t-32)) + 273; }
    }

    /* sets temperature to new degrees and scale from input string
     * @param temp, the new temperature as a string
     *
     */
    public void setTemperature(String temp) // isValid on this one
    {
	char newScale = temp.charAt(temp.length()-1);
	//temp.substring(temp.length()-2, temp.length()-1);
	double newDegrees = Double.parseDouble(temp.substring(0, temp.length()-2));

	scale = newScale;
	degrees = newDegrees;
    }

    /* returns this temperature as a string
     * @return degrees and scale as a string
     */
    public String printTemperature()
    { return degrees + " " + scale; }

    /* raises the input temperature by d amount
     * @param t and d, temperature and degrees respectively
     * @return new temperature object
     */
    public Temperature raise(Temperature t, double d) // isValid on this one
    {
	if( isValid(t.getDegrees(), t.getScale()) )
	    return new Temperature(t.getDegrees() + d, t.getScale());
	else
	    return this;
    }
    
    /* lowers the input temperature by d amount
     * @param t and d, temperature and degrees respectively
     * @return new temperature object
     */
    public Temperature lower(Temperature t, double d) // isValid on this one
    {
	if( isValid(t.getDegrees(), t.getScale()) )
	    return new Temperature(t.getDegrees() - d, t.getScale());
	else
	    return this;
    }

    /* tests if two temperatures are equal
     * @param t, temperature to be tested to this
     * @return true if equal, false otherwise
     */
    public boolean equals(Temperature t) // isValid on this one
    { return (this.getDegrees() == t.getDegrees()); }

    /* tests if two temperatures are less than/ unequal
     * @param t, temperature to be tested to this
     * @return true if this is less than t, false otherwise
     */    
    public boolean lessThan(Temperature t) // isValid on this one
    { return getDegrees() < t.getDegrees(); }
}
bda5@augusta:~/214/projects/08/Java$ cat temperature           TemperatureTester.java
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
bda5@augusta:~/214/projects/08/Java$ javac -deprecation TemperatureTester.java
bda5@augusta:~/214/projects/08/Java$ java Temperature Tester
Error: Main method not found in class Temperature, please define the main method as:
   public static void main(String[] args)
or a JavaFX application class must extend javafx.application.Application
bda5@augusta:~/214/projects/08/Java$ java Temperature Tester [1P
0.0 C 0.0 K 0.0 F 
2.5 C 2.5 K 2.5 F 
5.0 C 5.0 K 5.0 F 
7.5 C 7.5 K 7.5 F 
10.0 C 10.0 K 10.0 F 
12.5 C 12.5 K 12.5 F 
15.0 C 15.0 K 15.0 F 
17.5 C 17.5 K 17.5 F 
20.0 C 20.0 K 20.0 F 
22.5 C 22.5 K 22.5 F 
25.0 C 25.0 K 25.0 F 
27.5 C 27.5 K 27.5 F 
30.0 C 30.0 K 30.0 F 
32.5 C 32.5 K 32.5 F 
35.0 C 35.0 K 35.0 F 
37.5 C 37.5 K 37.5 F 
40.0 C 40.0 K 40.0 F 
42.5 C 42.5 K 42.5 F 
45.0 C 45.0 K 45.0 F 
47.5 C 47.5 K 47.5 F 
50.0 C 50.0 K 50.0 F 
52.5 C 52.5 K 52.5 F 
55.0 C 55.0 K 55.0 F 
57.5 C 57.5 K 57.5 F 
60.0 C 60.0 K 60.0 F 
62.5 C 62.5 K 62.5 F 
65.0 C 65.0 K 65.0 F 
67.5 C 67.5 K 67.5 F 
70.0 C 70.0 K 70.0 F 
72.5 C 72.5 K 72.5 F 
75.0 C 75.0 K 75.0 F 
77.5 C 77.5 K 77.5 F 
80.0 C 80.0 K 80.0 F 
82.5 C 82.5 K 82.5 F 
85.0 C 85.0 K 85.0 F 
87.5 C 87.5 K 87.5 F 
90.0 C 90.0 K 90.0 F 
92.5 C 92.5 K 92.5 F 
95.0 C 95.0 K 95.0 F 
97.5 C 97.5 K 97.5 F 
0.0 C 0.0 K 0.0 F 
20.0 C 20.0 K 20.0 F 
40.0 C 40.0 K 40.0 F 
60.0 C 60.0 K 60.0 F 
80.0 C 80.0 K 80.0 F 
bda5@augusta:~/214/projects/08/Java$ exit

Script done on Thu 12 Apr 2018 06:06:44 PM EDT
