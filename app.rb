require_relative 'config/environment'

class App < Sinatra::Base

get "/reversename/:name" do
  @reversename =
  end

  get "get /square/:number" do
    @squarenumber = params[:name]
  end

  # Code your final two routes here:
  get "/say/:number/:phrase" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @multiply = params[:num1].to_i * params[:num2].to_i
    "#{@multiply}"
  end

  get "/:operation/:number1/:number2" do
    @multiply = params[:num1].to_i * params[:num2].to_i
    "#{@multiply}"
  end

end
