require_relative 'config/environment'

class App < Sinatra::Base

get "/reversename/:name" do
  params[:name].reverse
  end

  get "/square/:number" do
    num = params[:number]
    (num.to_i**2).to_s
  end

  get "/say/:number/:phrase" do
    result = ""
    params[:number].to_i.times do
    result += params[:phrase]
    end
    result
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      num1 + num2
    when "subtract"
      num1 - num2
    when "multiply"
      num1 * num2
    when "divide"
      num1 / num2
    end
  end

end

