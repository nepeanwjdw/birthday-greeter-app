require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/happybirthday' do
    erb :birthday
  end

  # post '/countdown' do
  #   erb :countdown
  # end

  run! if app_file == $0
end
