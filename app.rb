require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
get "/reversename/:name" do 
  @reversename = 
"Hello World!"
  end

  # This is a sample dynamic route.
  get "get /square/:number" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
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