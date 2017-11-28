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

  def current_weather
    require 'open_weather'
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{kiki}"}
    response = OpenWeather::Current.city_id("2988506", options)
    temperature = response["main"]
    minimales = response["main"]["temp_min"]
    maximales = response["main"]["temp_max"]
  end

  def minimale
    require 'open_weather'
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{kiki}"}
    response = OpenWeather::Current.city_id("2988506", options)
    temperature = response["main"]
    minimale = response["main"]["temp_min"]
  end

  def maximale
    require 'open_weather'
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{kiki}"}
    response = OpenWeather::Current.city_id("2988506", options)
    temperature = response["main"]
    maximale = response["main"]["temp_max"]
  end



end
