module ApplicationHelper
  require 'open_weather'

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

  CITY_IDS = {
    :paris => "2988506",
    :argenteuil => "6457376",
    :dakar => "2253350",
    :fdf => "6690660",
    :wwa =>"6695624"
  }

  APPKEY = "#{ENV['OPEN_WEATHER_API_KEY']}"


  def argenteuil
    options = { units: "metric", APPID: "#{APPKEY}"}
    response = OpenWeather::Current.city_id("#{CITY_IDS[:argenteuil]}", options)
  end

  def dakar
    options = { units: "metric", APPID: "#{APPKEY}"}
    response = OpenWeather::Current.city_id("#{CITY_IDS[:dakar]}", options)
  end

  def varsovie
    options = { units: "metric", APPID: "#{APPKEY}"}
    response = OpenWeather::Current.city_id("#{CITY_IDS[:wwa]}", options)
  end

  def fdf
    options = { units: "metric", APPID: "#{APPKEY}"}
    response = OpenWeather::Current.city_id("#{CITY_IDS[:fdf]}", options)
  end


  def min_arg
    options = { units: "metric", APPID: "#{APPKEY}"}
    response = OpenWeather::Current.city_id("2988506", options)
    temperature = response["main"]
    minimale = response["main"]["temp_min"]
  end

  def max_arg
    options = { units: "metric", APPID: "#{APPKEY}"}
    response = OpenWeather::Current.city_id("2988506", options)
    temperature = response["main"]
    maximale = response["main"]["temp_max"]
  end

  def dakar_temp
    options = { units: "metric", APPID: "#{APPKEY}"}
    response = OpenWeather::Current.city_id("#{CITY_IDS[:dakar]}", options)
    maximale = response["main"]["temp_max"]
  end

  def wwa_temp
    options = { units: "metric", APPID: "#{APPKEY}"}
    response = OpenWeather::Current.city_id("#{CITY_IDS[:wwa]}", options)
    maximale = response["main"]["temp_max"]
  end

  def fdf_temp
    kiki = "#{ENV['OPEN_WEATHER_API_KEY']}"
    options = { units: "metric", APPID: "#{APPKEY}"}
    response = OpenWeather::Current.city_id("#{CITY_IDS[:fdf]}", options)
    maximale = response["main"]["temp_max"]
  end


end
