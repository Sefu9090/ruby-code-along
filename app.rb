require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post'/' do
    @user = {
      name: "#{params["fname"]} #{params["lname"]}",
      profile_pic_url: "#{params["picurl"]}",
      email: "#{params["email"]}",
      bday: "#{params["bday"]}",
      quote: "#{params["quote"]}",
      color: "#{params['color']}",
      day: "#{params["day"]}",
      month: "#{params["month"]}",
      year: "#{params["year"]}",
      country: "#{params["country"]}",
      city: "#{params["city"]}",
      wday: "#{params["wday"]}"
      }
    erb :dashboard
  end
  
end