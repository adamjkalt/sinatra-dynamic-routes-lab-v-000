require_relative 'config/environment'

class App < Sinatra::Base

get "/reversename/:name" do
  @reversename =
  end

  get "get /square/:number" do
    @squarenumber = params[:name]
  end

  get "/say/:number/:phrase" do
    @phrase = params[:name]
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @saywords = params[:num1].to_i * params[:num2].to_i
  end

  get "/:operation/:number1/:number2" do
    @multiply = params[:num1].to_i * params[:num2].to_i
    "#{@multiply}"
  end

end
