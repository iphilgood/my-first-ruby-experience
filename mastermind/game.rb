require 'secret'
require 'matcher'

class Game
  POSITION_COUNT = 4
  
  def initialize
    @secret = Secret.new
    @current_matcher = nil
    @matchers = []
  end
  
  def next_entering(guess)
    @current_matcher = Matcher.new(guess)
    @matchers << @current_matcher
  end
  
  def match?
    @current_matcher.match?(@secret)
  end
  
  # def display_position_matching
  #   puts "Deine Eingaben:"
  #   @current_matcher.results.each_with_index do |result, index|
  #     if result
  #       puts "#{index+1}. Position: Richtig getippt"
  #     else
  #       puts "#{index+1}. Position: Falsch getippt"
  #     end
  #   end
  
  def display_position_or_color_matching
    @current_matcher.display_position_or_color_matching
  end
end