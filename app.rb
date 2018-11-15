require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  # get '/happybirthday' do
  #   erb :happybirthday
  # end
  #
  # get '/countdown' do
  #   erb :countdown
  # end

  run! if app_file == $0
end
