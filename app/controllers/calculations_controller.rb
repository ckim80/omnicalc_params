class CalculationsController < ApplicationController

  def flex_square_5
    #  Parameters: {"num"=>"6"}
    @user_number = params["num"].to_f
    @square = @user_number **2
    render("calculations/flex_square_5.html.erb")
  end

  def flex_square_root_5
    @user_number = params["num"].to_i
    @square_root = Math.sqrt(@user_number).round(2)
    render("calculations/flex_square_root_5.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
      # Parameters: {"user_number"=>"33"}
      @user_number = params[:user_number].to_f
      @square = @user_number**2
    render("calculations/square.html.erb")
  end

  def square_root_form
    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_number = params[:user_number].to_f
    @square_root = Math.sqrt(@user_number)
    render("calculations/square_root.html.erb")
  end

  def flex_payment_5
    @apr = params["num1"].to_f
    @years = params["num2"].to_i
    @principal = params["num3"].to_f
    @monthly_payment = (((@apr/100)/12)*@principal)/(1-(1+((@apr/100)/12))**((-1*@years)*12))
    render("calculations/flex_payment_5.html.erb")
  end
  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment
    @apr = params[:apr].to_f
    @years = params[:years].to_i
    @principal = params[:principal].to_f
    @monthly_payment = (((@apr/100)/12)*@principal)/(1-(1+((@apr/100)/12))**((-1*@years)*12))
    render("calculations/payment.html.erb")
  end

  def flex_random_5
    @first_number = params["num1"].to_i
    @second_number = params["num2"].to_i
    @random_number = rand(@first_number..@second_number)
    render("calculations/flex_random_5.html.erb")
  end

  def random_form
    render("calculations/random_form.html.erb")
  end
  def random
    @first_number = params[:first_number].to_i
    @second_number = params[:second_number].to_i
    @random_number = rand(@first_number..@second_number)
    render("calculations/random.html.erb")
  end

  def word_count_form
    render("calculations/word_count_form.html.erb")
  end

  def word_count
    @text = params[:user_text]
    @special_word = params[:user_word]

    @word_count = @text.split.count

    @character_count_with_spaces = @text.length

     text_wo_spaces = @text.gsub(" ","")
     text_wo_linefeed = text_wo_spaces.gsub("\n","")
     text_wo_cr = text_wo_linefeed.gsub("\r","")
     text_wo_tabs = text_wo_cr.gsub("\t","")

    @character_count_without_spaces = text_wo_tabs.length

    @occurrences = @text.scan(@special_word.capitalize).count + @text.scan(@special_word.upcase).count + @text.scan(@special_word.downcase).count
  end
end
