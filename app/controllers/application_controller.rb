class ApplicationController < ActionController::Base

  def sign 

    @sign = params.fetch("sign")

    sign_info = Zodiac.list.fetch(@sign.to_sym)

    @horoscope = sign_info.fetch(:horoscope)

    @array_of_numbers = Array.new
    5.times do
      another_number = rand(1...100)
      @array_of_numbers.push(another_number)
    end

    render({:template => "zodiac_templates/sign.html.erb"})

  end

end
