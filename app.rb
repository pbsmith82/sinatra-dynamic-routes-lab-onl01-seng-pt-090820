require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    "#{square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    num = @number.to_i
    @phrase * num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    "#{@word1} " "#{@word2} " "#{@word3} " "#{@word4} " "#{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    @num3 = @num1.to_i
    @num4 = @num2.to_i
    #binding.pry
    if @op == "subtract" 
      result = @num3 - @num4
      "#{result}"
    elsif @op == "multiply"
      result = @num3 * @num4
      "#{result}"
    elsif @op == "divide"
      result = @num3 / @num4
      "#{result}"
    elsif @op == "add"
      result = @num3 + @num4
      "#{result}"
    end
  end


end