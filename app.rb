require 'sinatra/base'
require 'check_birthday'

class BirthdayGreeter < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @name = params[:name]
    day = params[:day]
    month = params[:month]
    @days_remaining = days_remaining?(day, month)
    @days_remaining == 0 ? erb(:happybirthday) : erb(:countdown)
  end

  run! if app_file == $0
end
