module ApplicationHelper
  def time_greeting
    gday = "Bonjour"
    night = "Bonne nuit"

    @time = DateTime.current
    if  @time.strftime("%H").to_i > 18
      return night
    else
      return gday
    end
  end


  def my_city_weather
    require 'open_weather'
    city_id = "2988506"
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{kiki}"}
    response = OpenWeather::Current.city_id("#{city_id}", options)
    temperature = response["main"]
    minimales = response["main"]["temp_min"]
    maximales = response["main"]["temp_max"]
  end

  def min_arg
    require 'open_weather'
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{kiki}"}
    response = OpenWeather::Current.city_id("2988506", options)
    temperature = response["main"]
    minimale = response["main"]["temp_min"]
  end

  def max_arg
    require 'open_weather'
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{kiki}"}
    response = OpenWeather::Current.city_id("2988506", options)
    temperature = response["main"]
    maximale = response["main"]["temp_max"]
  end

  def dakar_temp
    require 'open_weather'
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{kiki}"}
    response = OpenWeather::Current.city_id("2253350", options)
    maximale = response["main"]["temp_max"]
  end

  def wwa_temp
    require 'open_weather'
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{kiki}"}
    response = OpenWeather::Current.city_id("6695624", options)
    maximale = response["main"]["temp_max"]
  end

  def fdf_temp
    require 'open_weather'
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{kiki}"}
    response = OpenWeather::Current.city_id("6690660", options)
    maximale = response["main"]["temp_max"]
  end

end
