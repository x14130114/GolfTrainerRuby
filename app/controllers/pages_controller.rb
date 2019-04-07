require "weathergolf"

class PagesController < ApplicationController

  # method using the weathergolf gem i created to access the data from openweather api for the main course locations in my application
  def home
  	@id = params[:id]
  	@current_weather=WeatherApi.find_city("dublin")
  	@current_weather1=WeatherApi.find_city("cork")
  	@current_name=WeatherApi.find_name("dublin")
  	@current_name1=WeatherApi.find_name("cork")
  	@current_weather2=WeatherApi.find_city("wicklow")
  	@current_weather3=WeatherApi.find_city("sligo")
  	@current_name2=WeatherApi.find_name("wicklow")
  	@current_name3=WeatherApi.find_name("sligo")
  	@current_weather4=WeatherApi.find_city("meath")
  	@current_name4=WeatherApi.find_name("meath")
  end

  def icon
  	@current_weather=WeatherIcon.find_icon("04d")
  end

  # search method that allows the user to search across Course names and trainer names, if blank returns a notice message
  def search
  	if params[:search].blank?  
    	redirect_to(root_path, notice: "Empty Search field! Please try again") and return  
  	else
  		@parameter = params[:search].downcase  
    	@results = Course.all.where("course_name LIKE :search", search: "%#{@parameter}%" )  
    	@answers = Trainer.all.where("first_name LIKE :search", search: "%#{@parameter}%" )
  	end  
  end

end
