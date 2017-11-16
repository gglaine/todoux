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
end
