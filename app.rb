require_relative 'config/environment'

class App < Sinatra::Base

get "/reversename/:name" do
  params[:name].reverse
  end

  get "get /square/:number" do
    num = params[:number]
    num.to_i**2.to_s
  end

  get "/say/:number/:phrase" do
    @phrase = params[:name]
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @saywords = params[:num1].to_i * params[:num2].to_i
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:num1].to_i * params[:num2].to_i
  end

end
