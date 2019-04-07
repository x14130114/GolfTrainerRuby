require "httparty"

module WeatherApi
	include HTTParty 
	base_uri "http://api.openweathermap.org/"

	def self.find(id)
		get("/data/2.5/weather?lat=#{id}&lon=-6&appid=f7a020eda1ac4ca06d6285a153ba3c63").parsed_response["weather"]
	end

	def self.find_name(name)
		get("/data/2.5/weather?q=#{name}&appid=f7a020eda1ac4ca06d6285a153ba3c63")
	end

	def self.find_city(city)
		get("/data/2.5/weather?q=#{city}&appid=f7a020eda1ac4ca06d6285a153ba3c63").parsed_response["weather"]
	end
end

WeatherApi.find(53)
WeatherApi.find_city("dublin")
