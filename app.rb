require 'sinatra/base'
require './lib/check_birthday'

class BirthdayGreeter < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday' do
    day = params[:day]
    month = params[:month]
    if day == "15" && month == "November"
      redirect '/happybirthday'
    else
      redirect './countdown'
    end
    # birthday?(day, month) ?  :
  end

  get '/happybirthday' do
    erb :happybirthday
  end

  get '/countdown' do
    erb :countdown
  end

  run! if app_file == $0
end
