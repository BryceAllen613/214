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
