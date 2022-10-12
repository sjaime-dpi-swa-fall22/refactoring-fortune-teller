class FortunesController < ApplicationController
  def horoscope
    all_zodiacs = Zodiac.list
    @sign=params["sign"]
    this_zodiac = all_zodiacs[@sign.to_sym]
    @horoscope = this_zodiac[:horoscope]
    @sign=@sign.capitalize
    
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "all_zodiacs.html.erb" })
  end
end
