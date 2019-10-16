
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
