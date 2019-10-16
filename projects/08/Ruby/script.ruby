Script started on Thu 12 Apr 2018 06:22:45 PM EDT
bda5@augusta:~/214/projects/08/Ruby$ cat Temperature.rb
 # Temperature.java represents aggregate type temperature
 # cs 214
 # Calvin College
 # Bryce Allen
 # 4/6/18
 
module Temperatures
  class Temperature
    # inintializes the object
    # takes in a real and a string
    # initializes degrees, and scale respectively
    def initialize(degrees, scale)
      @degrees, @scale = degrees, scale
    end

    attr_reader :degrees, :scale
    
    # modifies this object to be of celsius
    # converts the temperature to be celsius
    # modifies degrees and scale
    def getCelsius(t)
      if t.scale =~ /C/
        @degrees = t.degrees
      elsif t.scale =~ /F/
        @degrees = (t.degrees - 32)*(5.0/9.0)
      else
        @degrees = (t.degrees - 273.15)
      end
      @scale = "C"
    end
    
    # modifies this object to be of Kelvin
    # converts the temperature to be Kelvin
    # modifies degrees and scale
    def getKelvin(t)
      if t.scale =~ /K/
        @degrees = t.degrees
      elsif t.scale =~ /C/
        @degrees = t.degrees + 273.15
      else
        @degrees = ((t.degrees - 32) * (5/9)) + 273.15
      end
      @scale = "K"
    end
    
    # modifies this object to be of Fahrenheit
    # converts the temperature to be Fahrenheit
    # modifies degrees and scale
    def getFahrenheit(t)
      if t.scale =~ /F/
        @degrees = t.degrees
      elsif t.scale =~ /K/
        @degrees = ((t.degrees - 273.15) * (9/5)) + 32
      else
        @degrees = (t.degrees * 9/5) + 32
      end
      @scale = "F"
    end

    # modifies the temp to be of the inputted string
    # converts the 
    # @param, s, the string representing the new temperature
    def inputTemperature(s)
      @scale = s[s.length - 1]
      @degrees = s[0..s.length - 2].to_f
    end

    #prints the temperature
    def printTemp
      puts @degrees.to_s + " " + @scale
    end
    
    #raises the temperature by a amount
    #params: t and a, inputed temperature and change respectively
    def raise(t, a)
      d = Temperature.new(t.degrees+a, t.scale)
      return d
    end
    
    #lowers the temperature by a amount
    #params: t and a, inputed temperature and change respectively
    def lower(t, a)
      d = Temperature.new(t.degrees-a, t.scale)
      return d
    end

    #tests if the two temperatures are equal
    #param: t1, the second temperature
    def equals(t1)
      return @degrees == t1
    end

    #tests if this temperature is less than t1
    #param: t1, the second temperature
    def lessThan(t1)
      return @degrees < t1.degrees
    end
  end
end
bda5@augusta:~/214/projects/08/Ruby$ cat temperatureTester.rv b

require 'test/unit/assertions'
require "./Temperature.rb"
include Test::Unit::Assertions

def testTemperature
  baseTemp = Temperatures::Temperature.new(0.0, "F")
  limitTemp = Temperatures::Temperature.new(100.0, "C")
  stepValue = 2.5
  
  while baseTemp.lessThan(limitTemp) == true
    #baseTemp.printTemp
    baseTemp.getCelsius(baseTemp)
    baseTemp.printTemp
    baseTemp.getKelvin(baseTemp)
    baseTemp.printTemp
    baseTemp.getFahrenheit(baseTemp)
    baseTemp.printTemp
    baseTemp = baseTemp.raise(baseTemp, stepValue)
    print "\n"
  end

  baseTemp1 = Temperatures::Temperature.new(0.0, "K")
  limitTemp1 = Temperatures::Temperature.new(212.0, "F")
  stepValue1 = 2.5
  
  while baseTemp1.lessThan(limitTemp1) == true
    #baseTemp.printTemp
    baseTemp1.getCelsius(baseTemp1)
    baseTemp1.printTemp
    baseTemp1.getKelvin(baseTemp1)
    baseTemp1.printTemp
    baseTemp1.getFahrenheit(baseTemp1)
    baseTemp1.printTemp
    baseTemp1 = baseTemp1.raise(baseTemp1, stepValue1)
    print "\n"
  end
end

testTemperature
bda5@augusta:~/214/projects/08/Ruby$ exit

Script done on Thu 12 Apr 2018 06:23:06 PM EDT
