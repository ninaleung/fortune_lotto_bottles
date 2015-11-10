class PagesController < ApplicationController
  def home
    
  end

  def lotto
    all_numbers = []
    number = 1
    while number < 100
      all_numbers << number
      number += 1
    end

    @lotto_numbers = all_numbers.sample(5)

  end

  def views
    @now = 0
    while true
      @count_views = @now += 1
    end
  end

  def fortune
    fortunes = [
    "You will eat a waffle someday.",
    "You will run into a donkey on a crowded pier.",
    "You will crash the boat you're standing on.",
    "You will lose several important documents in a weird fire.",
    "You will not shower for seven years.",
    "You will find that which you have been seeking, one day.",
    "You have no idea what I'm saying."
  ]
    
    @random = fortunes[rand(0..6)]
     # = 

    # fortunes = [1,2,3]
    # fortunes = []
    # fortunes.push "You will eat a waffle someday."
    # fortunes.push "You will run into a donkey on a crowded pier."
    # fortunes.push "You will crash the boat you're standing on."
    # # fortunes[(rand(0..1))]
    # @fortunes = array.last
    # @fortunes  
  end

  def bottles
    @lyrics = []
    now_bottles = 99
    while now_bottles > 2
      @lyrics << "#{now_bottles.to_s} bottles of coconut water on the wall, #{now_bottles.to_s} bottles of coconut water!"
      now_bottles -= 1
      @lyrics << "Take one down, pass it around, #{now_bottles.to_s} bottles of coconut water on the wall!"
    end
    
    @lyrics << "2 bottles of coconut water on the wall, 2 bottles of coconut water!" 
    @lyrics << "Take one down, pass it around, 1 bottle of coconut water on the wall!"
    @lyrics << "1 bottle of coconut water on the wall, 1 bottle of coconut water!"
    @lyrics << "Take it, pass it around, no more bottles of coconut water on the wall!"
    @lyrics << "No more bottles of coconut water on the wall, no more bottles of coconut water!"
    @lyrics << "Go to the store, and buy some more, 99 bottles of coconut water on the wall!"
  end

end
