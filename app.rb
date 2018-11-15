require 'sinatra/base'
require './lib/check_birthday'

class BirthdayGreeter < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday' do
    @name = params[:name]
    day = params[:day]
    month = params[:month]
    birthday?(day, month) ? (erb :happybirthday) : (erb :countdown)
  end

  run! if app_file == $0
end
