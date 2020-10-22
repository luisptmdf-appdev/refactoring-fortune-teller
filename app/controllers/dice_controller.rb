class DiceController < ApplicationController

  def dice
    
    @number_of_dice = params.fetch("number_of_dice").to_i
    @how_many_sides = params.fetch("how_many_sides").to_i
    
    @array_of_rolls = Array.new

    @number_of_dice.times do
      @array_of_rolls.push(rand(@how_many_sides) + 1)
    end

    render({:template => "dice_templates/dice.html.erb"})
  end

end
